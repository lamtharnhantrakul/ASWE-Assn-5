/*
  ==============================================================================

    This file was auto-generated!

    It contains the basic framework code for a JUCE plugin processor.

  ==============================================================================
*/

#include "PluginProcessor.h"
#include "PluginEditor.h"

//==============================================================================
PpmPluginAudioProcessor::PpmPluginAudioProcessor()
#ifndef JucePlugin_PreferredChannelConfigurations
     : AudioProcessor (BusesProperties()
                     #if ! JucePlugin_IsMidiEffect
                      #if ! JucePlugin_IsSynth
                       .withInput  ("Input",  AudioChannelSet::stereo(), true)
                      #endif
                       .withOutput ("Output", AudioChannelSet::stereo(), true)
                     #endif
                       )
#endif
{
    CPpm::createInstance(m_pCPpm);
}

PpmPluginAudioProcessor::~PpmPluginAudioProcessor()
{
    CPpm::destroyInstance(m_pCPpm);
}

//==============================================================================
const String PpmPluginAudioProcessor::getName() const
{
    return JucePlugin_Name;
}

bool PpmPluginAudioProcessor::acceptsMidi() const
{
   #if JucePlugin_WantsMidiInput
    return true;
   #else
    return false;
   #endif
}

bool PpmPluginAudioProcessor::producesMidi() const
{
   #if JucePlugin_ProducesMidiOutput
    return true;
   #else
    return false;
   #endif
}

bool PpmPluginAudioProcessor::isMidiEffect() const
{
   #if JucePlugin_IsMidiEffect
    return true;
   #else
    return false;
   #endif
}

double PpmPluginAudioProcessor::getTailLengthSeconds() const
{
    return 0.0;
}

int PpmPluginAudioProcessor::getNumPrograms()
{
    return 1;   // NB: some hosts don't cope very well if you tell them there are 0 programs,
                // so this should be at least 1, even if you're not really implementing programs.
}

int PpmPluginAudioProcessor::getCurrentProgram()
{
    return 0;
}

void PpmPluginAudioProcessor::setCurrentProgram (int index)
{
}

const String PpmPluginAudioProcessor::getProgramName (int index)
{
    return {};
}

void PpmPluginAudioProcessor::changeProgramName (int index, const String& newName)
{
}

//==============================================================================
void PpmPluginAudioProcessor::prepareToPlay (double sampleRate, int samplesPerBlock)
{
    // Use this method as the place to do any pre-playback
    // initialisation that you need..
    
    // Initialize CPpm object
    m_pCPpm->initInstance(sampleRate, getTotalNumInputChannels());
    
    // Create an array to store the output Vppm per channel that is computed everytime we get a block
    m_iTotalNumInputChannels = getTotalNumInputChannels();
    m_pfOutputVppm = new float [m_iTotalNumInputChannels];
    
    
}

void PpmPluginAudioProcessor::releaseResources()
{
    // When playback stops, you can use this as an opportunity to free up any
    // spare memory, etc.
}

#ifndef JucePlugin_PreferredChannelConfigurations
bool PpmPluginAudioProcessor::isBusesLayoutSupported (const BusesLayout& layouts) const
{
  #if JucePlugin_IsMidiEffect
    ignoreUnused (layouts);
    return true;
  #else
    // This is the place where you check if the layout is supported.
    // In this template code we only support mono or stereo.
    if (layouts.getMainOutputChannelSet() != AudioChannelSet::mono()
     && layouts.getMainOutputChannelSet() != AudioChannelSet::stereo())
        return false;

    // This checks if the input layout matches the output layout
   #if ! JucePlugin_IsSynth
    if (layouts.getMainOutputChannelSet() != layouts.getMainInputChannelSet())
        return false;
   #endif

    return true;
  #endif
}
#endif

void PpmPluginAudioProcessor::processBlock (AudioBuffer<float>& buffer, MidiBuffer& midiMessages)
{
    ScopedNoDenormals noDenormals;
    auto totalNumInputChannels  = getTotalNumInputChannels();
    auto totalNumOutputChannels = getTotalNumOutputChannels();

    // In case we have more outputs than inputs, this code clears any output
    // channels that didn't contain input data, (because these aren't
    // guaranteed to be empty - they may contain garbage).
    // This is here to avoid people getting screaming feedback
    // when they first compile a plugin, but obviously you don't need to keep
    // this code if your algorithm always overwrites all the output channels.
    for (auto i = totalNumInputChannels; i < totalNumOutputChannels; ++i)
        buffer.clear (i, 0, buffer.getNumSamples());

    
    float **writePointers = buffer.getArrayOfWritePointers();
    m_pCPpm->process(writePointers, m_pfOutputVppm, buffer.getNumSamples());
    
}

float PpmPluginAudioProcessor::getVppm()
{
    // Output mean of Vppm across channels
    float sum = 0.0f;
    for (int c = 0; c < m_iTotalNumInputChannels; c++) {
        sum += m_pfOutputVppm[c];
    }
    return sum / static_cast<float>(m_iTotalNumInputChannels);
}

//==============================================================================
bool PpmPluginAudioProcessor::hasEditor() const
{
    return true; // (change this to false if you choose to not supply an editor)
}

AudioProcessorEditor* PpmPluginAudioProcessor::createEditor()
{
    return new PpmPluginAudioProcessorEditor (*this);
}

//==============================================================================
void PpmPluginAudioProcessor::getStateInformation (MemoryBlock& destData)
{
    // You should use this method to store your parameters in the memory block.
    // You could do that either as raw data, or use the XML or ValueTree classes
    // as intermediaries to make it easy to save and load complex data.
}

void PpmPluginAudioProcessor::setStateInformation (const void* data, int sizeInBytes)
{
    // You should use this method to restore your parameters from this memory block,
    // whose contents will have been created by the getStateInformation() call.
}

//==============================================================================
// This creates new instances of the plugin..
AudioProcessor* JUCE_CALLTYPE createPluginFilter()
{
    return new PpmPluginAudioProcessor();
}
