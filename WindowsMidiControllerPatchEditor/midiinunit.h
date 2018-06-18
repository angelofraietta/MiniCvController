//---------------------------------------------------------------------------
#ifndef MidiInUnitH
#define MidiInUnitH

class MidiInProcessor: public TMaxMidiIn {

private:
  bool ProcessMidiData(LPMIDIEVENT lpEvent);
public:
  MidiInProcessor(TComponent*, WORD devie_id, HWND parent_window);
};
//---------------------------------------------------------------------------
#endif
