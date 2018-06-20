//---------------------------------------------------------------------------
#include <vcl.h>
#pragma hdrstop

#include <windows.h>
#include "maxmidi.h"
#include "TMaxMidiIn.h"

#include "midiinunit.h"
#include "wrapperUnit.h"

MidiInProcessor::MidiInProcessor(TComponent* Owner, WORD DeviceID, HWND parent_window)
:TMaxMidiIn (Owner, DeviceID, parent_window)
{
}

bool MidiInProcessor::ProcessMidiData(LPMIDIEVENT lpEvent)
{
  TestWrapperForm->UpdateDisplay (lpEvent);
  return true;
}
//---------------------------------------------------------------------------
#pragma package(smart_init)
