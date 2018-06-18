// Source file: D:/develop/MidicontrollerPatchEditor/MidiPatchEditor/src/MidiConfig.java

public class MidiConfig extends MidiMessage {
    public boolean data1_vary;
    public boolean mute;
    public boolean invert;
    public boolean midi_out2;
    public boolean generate_initial;
    public boolean high_resolution;
    public boolean scale_input;
    public int lower_midi; // this is the Lower Midi Byte

    MidiConfig() {
    }
    /**
       @roseuid 404B664F01F4
     */
    public native void GetMidiConfig(int index);

    /**
       @roseuid 404CB7820251
     */
    public native void SetMidiConfig(int index);
}
