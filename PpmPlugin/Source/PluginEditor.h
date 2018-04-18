/*
  ==============================================================================

    This file was auto-generated!

    It contains the basic framework code for a JUCE plugin editor.

  ==============================================================================
*/

#pragma once

#include "../JuceLibraryCode/JuceHeader.h"
#include "PluginProcessor.h"

#include "MeterComponent.h"

//==============================================================================
/**
*/
class PpmPluginAudioProcessorEditor  : public AudioProcessorEditor, public Timer
{
public:
    PpmPluginAudioProcessorEditor (PpmPluginAudioProcessor&);
    ~PpmPluginAudioProcessorEditor();

    //==============================================================================
    void paint (Graphics&) override;
    void resized() override;
    
    
private:
    // This reference is provided as a quick way for your editor to
    // access the processor object that created it.
    PpmPluginAudioProcessor& processor;

    JUCE_DECLARE_NON_COPYABLE_WITH_LEAK_DETECTOR (PpmPluginAudioProcessorEditor)
    MeterComponent Meter;
    
    // `ProcessorEditor` inherets the `timerCallback()` method from `public Timer`
    void timerCallback() override
    {
        Meter.setValue(processor.getVppm());
    }

};
