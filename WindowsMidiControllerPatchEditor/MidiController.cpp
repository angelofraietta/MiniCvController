//---------------------------------------------------------------------------
#include <vcl.h>
#pragma hdrstop
USERES("MidiController.res");
USEFORM("wrapperunit.cpp", TestWrapperForm);
USEUNIT("..\threads\source\hal_windows\windowsevent.cpp");
USEFORM("PatchEditor.cpp", MidiController);
USEFORM("About.cpp", AboutForm);
USELIB("MidContLiobrary.lib");
//---------------------------------------------------------------------------
WINAPI WinMain(HINSTANCE, HINSTANCE, LPSTR, int)
{
  try
  {
     Application->Initialize();
     Application->Title = "MidiController.exe";
     Application->CreateForm(__classid(TTestWrapperForm), &TestWrapperForm);
     Application->CreateForm(__classid(TMidiController), &MidiController);
     Application->CreateForm(__classid(TAboutForm), &AboutForm);
     Application->Run();
  }
  catch (Exception &exception)
  {
     Application->ShowException(&exception);
  }
  return 0;
}
//---------------------------------------------------------------------------
