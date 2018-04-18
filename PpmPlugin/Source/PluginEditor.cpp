/*
  ==============================================================================

    This file was auto-generated!

    It contains the basic framework code for a JUCE plugin editor.

  ==============================================================================
*/

#include "PluginProcessor.h"
#include "PluginEditor.h"


//==============================================================================
PpmPluginAudioProcessorEditor::PpmPluginAudioProcessorEditor (PpmPluginAudioProcessor& p)
    : AudioProcessorEditor (&p), processor (p)
{
    // Make sure that before the constructor has finished, you've set the
    // editor's size to whatever you need it to be.
    setSize (25, 300);
    addAndMakeVisible(Meter);
    startTimer(10);  // start the timer to tick every 10ms
}

PpmPluginAudioProcessorEditor::~PpmPluginAudioProcessorEditor()
{
}

//==============================================================================
void PpmPluginAudioProcessorEditor::paint (Graphics& g)
{
    // (Our component is opaque, so we must completely fill the background with a solid colour)
    g.fillAll (Colours::black);
    
}

void PpmPluginAudioProcessorEditor::resized()
{
    // This is generally where you'll want to lay out the positions of any
    // subcomponents in your editor..
    Meter.setBounds(getLocalBounds());
}
