//---------------------------------------------------------------------------
#ifndef PatchEditorH
#define PatchEditorH
//---------------------------------------------------------------------------
#include <Classes.hpp>
#include <Controls.hpp>
#include <StdCtrls.hpp>
#include <Forms.hpp>
#include <ComCtrls.hpp>
//---------------------------------------------------------------------------
class TMidiController : public TForm
{
__published:	// IDE-managed Components
  TComboBox *ConfigPort;
  TComboBox *ConfigStatus;
  TComboBox *ConfigChannel;
  TComboBox *ConfigData1;
  TComboBox *ConfigData2;
  TCheckBox *MidiOut2;
  TRadioButton *Data1Vary;
  TRadioButton *Data2Vary;
  TCheckBox *InvertCheck;
  TCheckBox *MuteCheck;
  TCheckBox *GenerateInitialCheck;
  TLabel *Label7;
  TLabel *Label8;
  TLabel *Label10;
  TLabel *Label9;
  TLabel *Label11;
  TButton *WriteConfigButton;
  TCheckBox *HighResCheck;
  void __fastcall WriteConfigButtonClick(TObject *Sender);
  void __fastcall ConfigPortChange(TObject *Sender);
  void __fastcall ConfigStatusChange(TObject *Sender);
  void __fastcall ConfigChannelChange(TObject *Sender);
  void __fastcall FormShow(TObject *Sender);
private:	// User declarations
public:		// User declarations
  __fastcall TMidiController(TComponent* Owner);
    void UpdateConfig();
    void EnableButtons(bool enable);
};
//---------------------------------------------------------------------------
extern PACKAGE TMidiController *MidiController;
//---------------------------------------------------------------------------
#endif
