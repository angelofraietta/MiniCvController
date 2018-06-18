//---------------------------------------------------------------------------
#ifndef wrapperunitH
#define wrapperunitH
//---------------------------------------------------------------------------
#include <Classes.hpp>
#include <Controls.hpp>
#include <StdCtrls.hpp>
#include <Forms.hpp>
#include <Menus.hpp>
#include <ComCtrls.hpp>
#include <ExtCtrls.hpp>
#include <ToolWin.hpp>
#include <Dialogs.hpp>
#include <vector>

#include "configmsg.h"

class MidiInProcessor; // forward declaration
class SysexWriter;
class MidiOutputDriver;
class MidiInDriver;

void ProcessAcknowledge();

//---------------------------------------------------------------------------
class TTestWrapperForm : public TForm
{
  friend void ProcessAcknowledge();
  
__published:	// IDE-managed Components
  TMainMenu *MainMenu1;
  TMenuItem *File;
  TMenuItem *OpenFile;
  TMenuItem *SaveFile;
  TMenuItem *Exit;
  TMenuItem *Configuration;
  TMenuItem *WriteComplete;
  TMenuItem *ReadComplete;
  TOpenDialog *OpenDialog1;
  TSaveDialog *SaveDialog1;
  TMenuItem *Windows;
  TMenuItem *TileMenu;
  TMenuItem *AddDevice;
  TMenuItem *CascadeMenu;
  TStatusBar *StatusBar1;
  TPanel *Panel1;
  TProgressBar *SendStatus;
  TButton *WriteConfigButton;
  TButton *ReadConfigButton;
  TButton *FactoryDefaultButton;
  TLabel *Label1;
  TComboBox *InputDevicesBox;
  TLabel *Label3;
  TComboBox *StatusBox;
  TComboBox *ChannelBox;
  TLabel *Label4;
  TLabel *Label5;
  TComboBox *Data1Box;
  TComboBox *Data2Box;
  TComboBox *OutputDevicesBox;
  TLabel *Label2;
  TButton *SendMidiButton;
  TLabel *Label6;
  TCheckBox *MergeBox;
  TButton *CancelButton;
  TMenuItem *About;
    void __fastcall FormCreate(TObject *Sender);
  void __fastcall FormCloseQuery(TObject *Sender, bool &CanClose);
  void __fastcall FactoryDefaultButtonClick(TObject *Sender);
  void __fastcall StatusBoxChange(TObject *Sender);
  void __fastcall SendMidiButtonClick(TObject *Sender);
  void __fastcall OutputDevicesBoxChange(TObject *Sender);
  void __fastcall InputDevicesBoxChange(TObject *Sender);
  void __fastcall ReadConfigButtonClick(TObject *Sender);
  void __fastcall WriteCompleteClick(TObject *Sender);
  void __fastcall MergeBoxClick(TObject *Sender);
  void __fastcall OpenFileClick(TObject *Sender);
  void __fastcall SaveFileClick(TObject *Sender);
  void __fastcall TileMenuClick(TObject *Sender);
  void __fastcall ArrangeClick(TObject *Sender);
  void __fastcall AddDeviceClick(TObject *Sender);
  void __fastcall CascadeMenuClick(TObject *Sender);
  void __fastcall CancelButtonClick(TObject *Sender);
  void __fastcall ExitClick(TObject *Sender);
  void __fastcall AboutClick(TObject *Sender);
private:	// User declarations

    bool ReadSettings();
    void WriteSettings();

    void WriteConfigBytes();
public:		// User declarations
    __fastcall TTestWrapperForm(TComponent* Owner);
    void UpdateDisplay (unsigned char midi_data);
    void WriteConfigChannel (STR_CONFIG config_msg);
    void UpdateConfig();
    void EnableButtons(bool enable);        
};
//---------------------------------------------------------------------------
extern PACKAGE TTestWrapperForm *TestWrapperForm;
//---------------------------------------------------------------------------
#endif
