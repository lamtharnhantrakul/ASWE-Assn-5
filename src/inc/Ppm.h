#if !defined(__Ppm_hdr__)
#define __Ppm_hdr__

#include "ErrorDef.h"
#include <cmath>

class CPpm
{
public:
    static Error_t createInstance (CPpm*& pCPpm);
    static Error_t destroyInstance (CPpm*& pCPpm);

    Error_t initInstance (float fSampleRateInHz, int iNumChannels);

    Error_t process (float **ppfInputBuffer, int iNumberOfFrames);

protected:
    CPpm ();
    virtual ~CPpm ();

private:
    float m_fCurrVppm =         0.0f;
    float m_fAlphaAT =          0.0f;
    float m_fAlphaRT =          0.0f;
    float m_fEpsilon =          1.0f * exp(-5.0f); // -100dB
    float m_fSampleRate =       0.0f;
    int m_iNumChannels =        0;

    float *m_pfVppMaxOfBlock =         nullptr;
    float *m_pfPrevVppm =       nullptr;
};

#endif // #if !defined(__Ppm_hdr__)