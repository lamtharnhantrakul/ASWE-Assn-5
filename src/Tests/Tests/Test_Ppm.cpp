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
                m_iNumChannels(3),
                m_fEpsilon(1.0f * pow(10.0f,-5.0f)),
                m_fAlphaAT(1.0f - exp(-2.2f / (m_fSampleRate * 0.01f))),  // alpha = 1 - [exp(-2.2 / (f_s * 0.01)), exp(-2.2 / (f_s * 1.5))];
                m_fAlphaRT(1.0f - exp(-2.2f / (m_fSampleRate * 1.5f)))

        {
            CPpm::createInstance(m_pCPpm);
            m_pCPpm->initInstance(m_fSampleRate, m_iNumChannels);

            // This pointer simulates a single block pulled taken from full input signal
            m_ppfInputTmp = new float*[m_iNumChannels];
            // This pointer simulates a single block outputted from the process function. Unlike the input block, the output is only one value (the Vppm) per channel.
            m_pfVppmOutputTmp = new float [m_iNumChannels]();

            // Init the full test signal to zeros
            m_ppfInputData = new float*[m_iNumChannels];
            for (int i = 0; i < m_iNumChannels; i++) {
                m_ppfInputData[i] = new float [m_kiDataLength]();
                //CSynthesis::generateSine(m_ppfInputData[i], 1000, m_fSampleRate, m_kiDataLength, m_fTestSineAmp, 0);
            }

            // This is the vector that contains the Vppm per channel computed from the block
            m_pfVppmOutput = new float [m_iNumChannels];
            for (int i=0; i < m_iNumChannels; i++) {
                m_pfVppmOutput[i] = 0.0f;
            }

            // This is a matrix that combines ``m_pfVppmOutput`` from every block into one long matrix. Let's you check the output for every block. Init to 0
            m_ppfVppmOutputBlocks = new float* [m_iNumChannels];
            for (int c=0; c < m_iNumChannels; c++) {
                m_ppfVppmOutputBlocks[c] = new float [m_iNumBlocks]();
            }

        }

        ~PpmData()
        {
            for (int c = 0; c < m_iNumChannels; c++)
            {
                delete [] m_ppfInputData[c];
                delete [] m_ppfVppmOutputBlocks[c];
            }
            delete [] m_ppfInputData;
            delete [] m_ppfInputTmp;
            delete [] m_ppfVppmOutputBlocks;

            delete [] m_pfVppmOutputTmp;
            delete [] m_pfVppmOutput;

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

        float convertAbsAmpToLogEpsThresh(float iAbsAmp) {
            if (iAbsAmp < m_fEpsilon)
            {
                // Ensure there are no peak values smaller than epsilon, otherwise log(0) returns an error
                iAbsAmp = m_fEpsilon;
            }
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
            cout << endl;
        }

        void printLogToAbsSignal(float** ppfData, int iNumChannels, int iDataLength) {
            // Printing out the test signal
            for (int c = 0; c < iNumChannels; c++) {
                cout << endl;
                for (int i = 0; i < iDataLength; i++){
                    cout  << convertLogToAbsAmp(ppfData[c][i]) << " ";
                }
            }
            cout << endl;
        }

        const int    m_kiDataLength;
        const int    m_iNumChannels;
        const float  m_fSampleRate;
        const int    m_iBlockLength;
        const int    m_iNumBlocks;
        const float  m_fTestSineAmp;
        const float  m_fEpsilon;
        const float  m_fAlphaAT;
        const float  m_fAlphaRT;

        CPpm        *m_pCPpm;
        float       **m_ppfInputTmp;
        float       **m_ppfInputData;
        float       *m_pfVppmOutputTmp;
        float       *m_pfVppmOutput;
        float       **m_ppfVppmOutputBlocks;



    };


    TEST_FIXTURE(PpmData, ZeroInputSignal)
    {
        // Don't really have to

        const float fZeroAmp = 0.0f;

        // Zero input signal for all channels
        for (int c = 0; c < m_iNumChannels; c++) {
            for (int i = 0; i < m_kiDataLength; i++) {
                m_ppfInputData[c][i] = fZeroAmp;
            }
        }

        //printSignal(m_ppfInputData, m_iNumChannels, m_kiDataLength);
        process();
        //printLogToAbsSignal(m_ppfVppmOutputBlocks, m_iNumChannels, m_iNumBlocks);
        //printSignal(m_ppfVppmOutputBlocks, m_iNumChannels, m_iNumBlocks);

        // Check if the most recent output block was -100dB
        for (int c = 0; c < m_iNumChannels; c++) {
            CHECK_CLOSE(m_pfVppmOutputTmp[c], convertAbsAmpToLogEpsThresh(fZeroAmp), 1e-3);
        }

        // Check if all blocks have -100dB in all channels
        for (int i = 0; i < m_iNumBlocks; i++) {
            for (int c = 0; c < m_iNumChannels; c++) {
                        CHECK_CLOSE(m_ppfVppmOutputBlocks[c][i], convertAbsAmpToLogEpsThresh(fZeroAmp), 1e-3);
            }
        }

    }

    TEST_FIXTURE(PpmData, DCInputSignal)
    {
        const float fDCAmp = 0.7f;

        // DC input signal for all channels
        for (int c = 0; c < m_iNumChannels; c++) {
            for (int i = 0; i < m_kiDataLength; i++) {
                m_ppfInputData[c][i] = fDCAmp;
            }
        }

        //printSignal(m_ppfInputData, m_iNumChannels, m_kiDataLength);
        process();
        //printLogToAbsSignal(m_ppfVppmOutputBlocks, m_iNumChannels, m_iNumBlocks);
        //printSignal(m_ppfVppmOutputBlocks, m_iNumChannels, m_iNumBlocks);

        // Check if the most recent output block was -100dB
        for (int c = 0; c < m_iNumChannels; c++) {
                    CHECK_CLOSE(m_pfVppmOutputTmp[c], convertAbsAmpToLogEpsThresh(fDCAmp), 1e-3);
        }
    }

    TEST_FIXTURE(PpmData, DCHalfwayInputSignal)
    {
        const float fDCAmp = 0.7f;
        const int   iDataMidPoint = floor(m_kiDataLength/2);

        // DC only halfway through the signal
        for (int c = 0; c < m_iNumChannels; c++) {
            for (int i = 0; i < m_kiDataLength; i++) {
                m_ppfInputData[c][i] = 0.0f;
            }
        }
        for (int c = 0; c < m_iNumChannels; c++) {
            for (int i = 0; i < iDataMidPoint; i++) {
                m_ppfInputData[c][i] = fDCAmp;
            }
        }

        //printSignal(m_ppfInputData, m_iNumChannels, m_kiDataLength);
        process();
        //printLogToAbsSignal(m_ppfVppmOutputBlocks, m_iNumChannels, m_iNumBlocks);
        //printSignal(m_ppfVppmOutputBlocks, m_iNumChannels, m_iNumBlocks);

        const int iMidPointBlockIdx = static_cast<int>(ceil(m_iNumBlocks/2.0f));

        // At the transition point, we expect there to be a decrease in the Vppm
        CHECK(m_ppfVppmOutputBlocks[0][iMidPointBlockIdx - 1] > m_ppfVppmOutputBlocks[0][iMidPointBlockIdx]);

    }

}

#endif //WITH_TESTS