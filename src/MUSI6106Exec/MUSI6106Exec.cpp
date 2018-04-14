
#include <ctime>
#include <iostream>
#include <fstream>

#include "MUSI6106Config.h"

#include "Dtw.h"
#include "Ppm.h"
#include "Synthesis.h"

using std::cout;
using std::endl;

// local function declarations
void    showClInfo ();


/////////////////////////////////////////////////////////////////////////////////
// main function
int main(int argc, char* argv[])
{
    std::string             sMatrixFilePath,                 //!< file paths
        sAlignmentFilePath;

    clock_t                 TimeInTicks = 0;


    showClInfo();


    int    m_kiDataLength = 35131;
    int    m_iNumChannels = 3;
    float  m_fSampleRate = 31271;
    int    m_iBlockLength = 171;

    CPpm        *m_pCPpm;
    float       **m_ppfInputTmp;
    float       **m_ppfInputData;
    float       *m_pfVppmOutputTmp;
    float       *m_pfVppmOutput;

    //////////////////////////////////////////////////////////////////////////////

    CPpm::createInstance(m_pCPpm);
    //m_pCPpm->initInstance(m_fSampleRate, m_iNumChannels);

    m_ppfInputTmp = new float*[m_iNumChannels];

    m_ppfInputData = new float*[m_iNumChannels];
    for (int i = 0; i < m_iNumChannels; i++) {
        m_ppfInputData[i] = new float [m_kiDataLength];
        CSynthesis::generateSine(m_ppfInputData[i], 800, m_fSampleRate, m_kiDataLength, 1.0f, 0);
    }

    m_pfVppmOutputTmp = new float [m_iNumChannels];
    for (int i=0; i < m_iNumChannels; i++) {
        m_pfVppmOutputTmp[i] = 0.0f;
    }

    // Printing out the test signal
    for (int c = 0; c < m_iNumChannels; c++) {
        cout << endl;
        for (int i = 0; i < m_kiDataLength; i++){
            cout  << m_ppfInputData[c][i] << " ";
        }

    }

}


void     showClInfo()
{
    cout << "GTCMT MUSI6106 Executable" << endl;
    cout << "(c) 2014-2018 by Alexander Lerch" << endl;
    cout  << endl;

    return;
}
