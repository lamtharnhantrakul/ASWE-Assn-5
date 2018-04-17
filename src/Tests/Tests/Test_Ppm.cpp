#include "MUSI6106Config.h"

#ifdef WITH_TESTS
#include <cassert>
#include <ctime>
#include <iostream>
#include <fstream>

#include "UnitTest++.h"
#include "Ppm.h"
#include "Synthesis.h"
#include "Vector.h"

using std::cout;
using std::endl;

SUITE(Ppm)
{
    struct PpmData
    {
        PpmData() :
                m_kiDataLength(35131),
                m_fSampleRate(31271),
                m_iBlockLength(171),
                m_iNumBlocks(ceil(m_kiDataLength/m_iBlockLength)),
                m_fTestSineAmp(1.0f),
                m_iNumChannels(3)
        {
            CPpm::createInstance(m_pCPpm);
            m_pCPpm->initInstance(m_fSampleRate, m_iNumChannels);

            m_ppfInputTmp = new float*[m_iNumChannels];

            m_ppfInputData = new float*[m_iNumChannels];
            for (int i = 0; i < m_iNumChannels; i++) {
                m_ppfInputData[i] = new float [m_kiDataLength];
                CSynthesis::generateSine(m_ppfInputData[i], 1000, m_fSampleRate, m_kiDataLength, m_fTestSineAmp, 0);
            }

            m_pfVppmOutputTmp = new float [m_iNumChannels];
            for (int i=0; i < m_iNumChannels; i++) {
                m_pfVppmOutputTmp[i] = 0.0f;
            }

            m_pfVppmOutput = new float [m_iNumChannels];
            for (int i=0; i < m_iNumChannels; i++) {
                m_pfVppmOutput[i] = 0.0f;
            }

            m_ppfVppmOutputBlocks = new float* [m_iNumChannels];
            for (int c=0; c < m_iNumChannels; c++) {
                m_ppfVppmOutputBlocks[c] = new float [m_iNumBlocks]();
                for (int i=0; i < m_iNumBlocks; i++) {
                    m_ppfVppmOutputBlocks[c][i] = 0.0f;
                }
            }


        }

        ~PpmData()
        {
            for (int i = 0; i < m_iNumChannels; i++)
            {
                delete [] m_ppfInputData[i];
                delete [] m_ppfVppmOutputBlocks[i];
            }
            delete [] m_ppfInputData;
            delete [] m_ppfVppmOutputBlocks;

            CPpm::destroyInstance(m_pCPpm);

        }

        void process ()
        {
            int iNumFramesRemaining = m_kiDataLength;
            int iBlockCounter = 0;
            while (iNumFramesRemaining > 0)
            {
                int iNumFrames = std::min(iNumFramesRemaining, m_iBlockLength);

                for (int c = 0; c < m_iNumChannels; c++)
                {
                    m_ppfInputTmp[c] = &m_ppfInputData[c][m_kiDataLength - iNumFramesRemaining];
                }
                m_pCPpm->process(m_ppfInputTmp, m_pfVppmOutputTmp, iNumFrames);

                //Copy data from `m_pfVppmOutputTmp` into correct block of `m_ppfVppmOutputBlocks`
                for (int c = 0; c < m_iNumChannels; c++) {
                    m_ppfVppmOutputBlocks[c][iBlockCounter] = m_pfVppmOutputTmp[c];
                }

                iNumFramesRemaining -= iNumFrames;
                iBlockCounter += 1;
                // cout << iBlockCounter << " " << endl;
            }
        }

        float convertLogToAbsAmp(float iLogAmplitude) {
            return pow(10.0f,(iLogAmplitude/20.0f));
        }

        float convertAbsAmpToLog(float iAbsAmp) {
            return 20 * log10(iAbsAmp);
        }

        void printSignal(float** ppfData, int iNumChannels, int iDataLength) {
            // Printing out the test signal
            for (int c = 0; c < iNumChannels; c++) {
                cout << endl;
                for (int i = 0; i < iDataLength; i++){
                    cout  << ppfData[c][i] << " ";
                }
            }
        }

        void printLogToAbsSignal(float** ppfData, int iNumChannels, int iDataLength) {
            // Printing out the test signal
            for (int c = 0; c < iNumChannels; c++) {
                cout << endl;
                for (int i = 0; i < iDataLength; i++){
                    cout  << convertLogToAbsAmp(ppfData[c][i]) << " ";
                }
            }
        }

        const int    m_kiDataLength;
        const int    m_iNumChannels;
        const float  m_fSampleRate;
        const int    m_iBlockLength;
        const int    m_iNumBlocks;
        const float  m_fTestSineAmp;

        CPpm        *m_pCPpm;
        float       **m_ppfInputTmp;
        float       **m_ppfInputData;
        float       *m_pfVppmOutputTmp;
        float       *m_pfVppmOutput;
        float       **m_ppfVppmOutputBlocks;



    };

    TEST_FIXTURE(PpmData, UnitSine)
    {
        // Printing out the test signal
        //printSignal(m_ppfInputData, m_iNumChannels, m_kiDataLength);

        process();
        printLogToAbsSignal(m_ppfVppmOutputBlocks, m_iNumChannels, m_iNumBlocks);

        cout << endl;
        for (int c = 0; c < m_iNumChannels; c++) {
            cout  << convertLogToAbsAmp(m_pfVppmOutputTmp[c]) << " ";
        }

        // Ground Truth
        for (int c = 0; c < m_iNumChannels; c++) {
            m_pfVppmOutput[c] = m_fTestSineAmp;
        }
        cout << endl;
        for (int c = 0; c < m_iNumChannels; c++) {
            cout  << m_pfVppmOutput[c] << " ";
        }


        for (int c = 0; c < m_iNumChannels; c++) {
                    CHECK_CLOSE(m_pfVppmOutput[c], convertLogToAbsAmp(m_pfVppmOutputTmp[c]) , 0.1);
        }

    }

    TEST_FIXTURE(PpmData, UnitSineHalfwayZero)
    {
        //Generate Sine
        m_ppfInputData = new float*[m_iNumChannels];
        for (int c = 0; c < m_iNumChannels; c++) {
            m_ppfInputData[c] = new float [m_kiDataLength];
            CSynthesis::generateSine(m_ppfInputData[c], 1000, m_fSampleRate, m_kiDataLength, m_fTestSineAmp, 0);
        }
        // Zero out the second half of the signal
        int iHalfwaySampleIdx = floor(m_kiDataLength/2.0f);
        for (int c = 0; c < m_iNumChannels; c++) {
            for (int j = iHalfwaySampleIdx; j < m_kiDataLength; j++) {
                m_ppfInputData[c][j] = 0.0f;
            }
        }

        //printSignal(m_ppfInputData, m_iNumChannels, m_kiDataLength);

        process();
        printLogToAbsSignal(m_ppfVppmOutputBlocks, m_iNumChannels, m_iNumBlocks);

        int iHalfwayBlockIdx = ceil(iHalfwaySampleIdx/m_iBlockLength);
        cout << endl;
        cout << convertLogToAbsAmp(m_ppfVppmOutputBlocks[0][iHalfwayBlockIdx]) << endl;
        cout << convertLogToAbsAmp(m_ppfVppmOutputBlocks[0][iHalfwayBlockIdx+1]) << endl;
        cout << convertLogToAbsAmp(m_ppfVppmOutputBlocks[0][iHalfwayBlockIdx+1]) - convertLogToAbsAmp(m_ppfVppmOutputBlocks[0][iHalfwayBlockIdx]) << endl;
    }

}

#endif //WITH_TESTS