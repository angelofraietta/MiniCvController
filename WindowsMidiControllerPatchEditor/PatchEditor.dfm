�
 TMIDICONTROLLER 0�
  TPF0TMidiControllerMidiControllerLeftITop� BorderStylebsToolWindowCaptionMidiControllerClientHeight� ClientWidth� Color	clBtnFaceFont.CharsetDEFAULT_CHARSET
Font.ColorclWindowTextFont.Height�	Font.NameMS Sans Serif
Font.Style 	FormStyle
fsMDIChildOldCreateOrderPosition	poDefaultVisible	OnShowFormShowPixelsPerInch`
TextHeight TLabelLabel7LeftTopWidth"HeightCaptionDevice  TLabelLabel8LeftTop8WidthFHeightCaptionMessage Type  TLabelLabel10LeftTop`Width8HeightCaptionData Byte 1  TLabelLabel9Left� Top8Width'HeightCaptionChannel  TLabelLabel11LeftxTop`Width8HeightCaptionData Byte 2  	TComboBox
ConfigPortLeftTopWidthqHeightStylecsDropDownList
ItemHeightTabOrder OnChangeConfigPortChange  	TComboBoxConfigStatusLeftTopHWidth� HeightStylecsDropDownList
ItemHeightItems.StringsNote OffNote OnPolyphonic PressureControl ChangeProgram ChangeChannel Pressure
Pitch Bend TabOrderOnChangeConfigStatusChange  	TComboBoxConfigChannelLeft� TopHWidth9HeightStylecsDropDownList
ItemHeightTabOrderOnChangeConfigChannelChange  	TComboBoxConfigData1LeftToppWidthIHeightStylecsDropDownList
ItemHeightTabOrderOnChangeConfigChannelChange  	TComboBoxConfigData2Left� ToppWidthIHeightStylecsDropDownList
ItemHeightTabOrderOnChangeConfigChannelChange  	TCheckBoxMidiOut2Left� TopWidthQHeightHint Sends CV inputs to Midi Output 2CaptionMidi Output 2TabOrderOnClickConfigChannelChange  TRadioButton	Data1VaryLeftTop� WidthYHeightHint,Data byte 1 contains the variable data valueCaptionData 1 VariesTabOrderOnClickConfigChannelChange  TRadioButton	Data2VaryLeftxTop� WidthYHeightHint,Data byte 2 contains the variable data valueCaptionData 2 VariesChecked	TabOrderTabStop	OnClickConfigChannelChange  	TCheckBoxInvertCheckLeftTop� WidthQHeightHint!Invert the value of the Dtat byteBiDiModebdLeftToRightCaptionInvertParentBiDiModeTabOrderOnClickConfigChannelChange  	TCheckBox	MuteCheckLeft� TopWidthAHeightHintDisable valueCaptionMuteTabOrder	OnClickConfigChannelChange  	TCheckBoxGenerateInitialCheckLeftXTop� WidthqHeightHint9Generates the initial value when Midi Controller is resetCaptionGenerate on ResetTabOrder
OnClickConfigChannelChange  TButtonWriteConfigButtonLeftTop� WidthYHeightCaptionWrite ConfigTabOrderOnClickWriteConfigButtonClick  	TCheckBoxHighResCheckLeft� Top(WidthIHeightCaption10 BitTabOrder   