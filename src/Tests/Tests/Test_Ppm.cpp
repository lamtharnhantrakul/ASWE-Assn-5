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
                m_iNumChannels(3)
        {
            CPpm::createInstance(m_pCPpm);
            m_pCPpm->initInstance(m_fSampleRate, m_iNumChannels);

            m_ppfInputTmp = new float*[m_iNumChannels];

            m_ppfInputData = new float*[m_iNumChannels];
            for (int i = 0; i < m_iNumChannels; i++) {
                m_ppfInputData[i] = new float [m_kiDataLength];
                CSynthesis::generateSine(m_ppfInputData[i], 1000, m_fSampleRate, m_kiDataLength, 0.5f, 0);
            }

            m_pfVppmOutputTmp = new float [m_iNumChannels];
            for (int i=0; i < m_iNumChannels; i++) {
                m_pfVppmOutputTmp[i] = 0.0f;
            }

            m_pfVppmOutput = new float [m_iNumChannels];
            for (int i=0; i < m_iNumChannels; i++) {
                m_pfVppmOutput[i] = 0.0f;
            }


        }

        ~PpmData()
        {
            for (int i = 0; i < m_iNumChannels; i++)
            {
                delete [] m_ppfInputData[i];
            }
            delete [] m_ppfInputData;

            CPpm::destroyInstance(m_pCPpm);

        }

        void process ()
        {
            int iNumFramesRemaining = m_kiDataLength;
            while (iNumFramesRemaining > 0)
            {
                int iNumFrames = std::min(iNumFramesRemaining, m_iBlockLength);

                for (int c = 0; c < m_iNumChannels; c++)
                {
                    m_ppfInputTmp[c] = &m_ppfInputData[c][m_kiDataLength - iNumFramesRemaining];
                }
                m_pCPpm->process(m_ppfInputTmp, m_pfVppmOutputTmp, iNumFrames);

                iNumFramesRemaining -= iNumFrames;
            }
        }

        const int    m_kiDataLength;
        const int    m_iNumChannels;
        const float  m_fSampleRate;
        const int    m_iBlockLength;

        CPpm        *m_pCPpm;
        float       **m_ppfInputTmp;
        float       **m_ppfInputData;
        float       *m_pfVppmOutputTmp;
        float       *m_pfVppmOutput;


    };

    TEST_FIXTURE(PpmData, UnitSine)
    {
        // Printing out the test signal
        for (int c = 0; c < m_iNumChannels; c++) {
            cout << endl;
            for (int i = 0; i < m_kiDataLength; i++){
                cout  << m_ppfInputData[c][i] << " ";
            }
        }

        process();

        cout << endl;
        for (int c = 0; c < m_iNumChannels; c++) {
            cout  << pow(10,(m_pfVppmOutputTmp[c]/20)) << " ";
        }

        // Ground Truth
        for (int c = 0; c < m_iNumChannels; c++) {
            m_pfVppmOutput[c] = 0.5f;
        }
        cout << endl;
        for (int c = 0; c < m_iNumChannels; c++) {
            cout  << m_pfVppmOutput[c] << " ";
        }


        for (int c = 0; c < m_iNumChannels; c++) {
                    CHECK_CLOSE(m_pfVppmOutput[c], pow(10,(m_pfVppmOutputTmp[c]/20)) , 0.1);
        }

    }

}

#endif //WITH_TESTS