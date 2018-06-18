//---------------------------------------------------------------------------
#include <vcl.h>
#pragma hdrstop

#include "aBOUT.h"
//---------------------------------------------------------------------------
#pragma package(smart_init)
#pragma resource "*.dfm"
TAboutForm *AboutForm;
//---------------------------------------------------------------------------
__fastcall TAboutForm::TAboutForm(TComponent* Owner)
  : TForm(Owner)
{
  DWORD size, handle ;
  AnsiString app_name =   Application->ExeName;
  size = GetFileVersionInfoSize( app_name.c_str(), &handle);
  if (size)
  {
    int VersionMajor, VersionMinor;

    void *buf = malloc( size) ;
    GetFileVersionInfo( Application->ExeName.c_str(), 0, size, buf) ;
    VS_FIXEDFILEINFO *ffip ;
    unsigned ffisize ;
    VerQueryValue( buf, "\\", (void**)&ffip, &ffisize) ;
    VersionMajor = ffip->dwFileVersionMS >> 16 ;
    VersionMinor = ffip->dwFileVersionMS & 0xFFFF ;
    //VersionRelease = ffip->dwFileVersionLS >> 16 ;
    //VersionBuild = ffip->dwFileVersionLS & 0xFFFF ;
    VersionLabel->Caption = IntToStr(VersionMajor) + AnsiString (".") + IntToStr(VersionMinor);
    free( buf) ;
  }

}
//---------------------------------------------------------------------------
void __fastcall TAboutForm::Button1Click(TObject *Sender)
{
  Close();  
}
//---------------------------------------------------------------------------
