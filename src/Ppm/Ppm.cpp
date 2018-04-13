#include "ErrorDef.h"
#include "Ppm.h"


Error_t CPpm::createInstance(CPpm *&pCPpm)
{
    pCPpm = new CPpm ();

    if (!pCPpm)
        return kUnknownError;

    return kNoError;
}

Error_t CPpm::destroyInstance(CPpm *&pCPpm)
{
    if (!pCPpm)
        return kUnknownError;

    delete pCPpm;
    pCPpm = 0;

    return kNoError;
}

Error_t CPpm::initInstance (float fSampleRateInHz, int iNumChannels)
{
    m_fSampleRate = fSampleRateInHz;
    m_iNumChannels = iNumChannels;

    // MATLAB
    // alpha = 1 - [exp(-2.2 / (f_s * 0.01)), exp(-2.2 / (f_s * 1.5))];
    m_fAlphaAT = 1.0f - exp(-2.2f / (m_fSampleRate * 0.01f));
    m_fAlphaRT = 1.0f - exp(-2.2f / (m_fSampleRate * 1.5f));

    // Init an array to store the computed VPPM per channel
    m_pfVppMaxOfBlock = new float[m_iNumChannels];
    for (int i=0; i < m_iNumChannels; i++) {
        m_pfVppMaxOfBlock[i] = -INFINITY;
    }

    // Init an array to store the computed VPPM per channel
    m_pfPrevVppm = new float[m_iNumChannels];
    for (int i=0; i < m_iNumChannels; i++) {
        m_pfPrevVppm[i] = 0.0f;
    }
}

CPpm::CPpm()
{

}

CPpm::~CPpm()
{

}

Error_t CPpm::process(float **ppfInputBuffer, int iNumberOfFrames)
{
    // reset the vector holding the max vppm per channel
    for (int i=0; i < m_iNumChannels; i++)
    {
        m_pfVppMaxOfBlock[i] = -INFINITY;
    }

    for (int c = 0; c < m_iNumChannels; c++)
    {
        for (int i = 0; i < iNumberOfFrames; i++)
        {
            if (m_pfPrevVppm[c] > abs(ppfInputBuffer[c][i])) {
                // release state
                m_fCurrVppm = (1-m_fAlphaRT) * m_pfPrevVppm[c]; // MATLAB ==> ppmout(i) = (1-alpha_RT) * filterbuf; // We call `filterbuf` as `m_fPrevVppm` here
            }
            else {
                // attack state
                m_fCurrVppm = m_fAlphaAT * abs(ppfInputBuffer[c][i]) + (1-m_fAlphaAT) * m_pfPrevVppm[c]; // MATLAB ==>  ppmout(i) = alpha_AT * x(i) + (1-alpha_AT) * filterbuf;
            }
            m_pfPrevVppm[c] = m_fCurrVppm; // MATLAB ==>  filterbuf = ppmout(i);

            // Compare maximum, update if larger
            if (m_fCurrVppm > m_pfVppMaxOfBlock[c]) {
                m_pfVppMaxOfBlock[c] = m_fCurrVppm;
            }
        }
    }
    // For this block,

    return kNoError;
}
