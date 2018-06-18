import java.awt.*;
import java.awt.event.*;
import javax.swing.*;


/**
 * <p>Title: Midi Controller Patch Editor</p>
 * <p>Description: </p>
 * <p>Copyright: Copyright (c) 2004</p>
 * <p>Company: Angelo Fraietta</p>
 * @author Angelo Fraietta
 * @version 1.0
 */

public class MidiDevice extends JFrame{
  JPanel contentPane;
  JComboBox cmbDevice = new JComboBox();
  JCheckBox chkMidiOut2 = new JCheckBox();
  JCheckBox chkMute = new JCheckBox();
  JLabel jLabel1 = new JLabel();
  JComboBox cmbMessageType = new JComboBox();
  JLabel jLabel2 = new JLabel();
  JComboBox cmbChannel = new JComboBox();
  JLabel jLabel3 = new JLabel();
  JRadioButton rdData1 = new JRadioButton();
  JRadioButton rdData2 = new JRadioButton();
  JCheckBox chkInvert = new JCheckBox();
  JCheckBox chkGenReset = new JCheckBox();
  JComboBox cmbData1 = new JComboBox();
  JComboBox cmbData2 = new JComboBox();
  JLabel jLabel4 = new JLabel();
  JLabel lblData2 = new JLabel();
  ButtonGroup group = new ButtonGroup();

  boolean initialised = false;
  volatile boolean reading = false;
  JCheckBox chkHighRes = new JCheckBox();
  JComboBox cmbData3 = new JComboBox();
  JCheckBox chkScaleInput = new JCheckBox();
  JLabel jLabel6 = new JLabel();

  public MidiDevice() {
    try {
      jbInit();
      LoadCombos();
      initialised = true;
      ReadConfig();
    }
    catch(Exception e) {
    e.printStackTrace();
  }

  }



  public void ReadConfig(){
    if (initialised)
    {
      reading = true;
      MidiConfig config = new MidiConfig();
      config.GetMidiConfig(cmbDevice.getSelectedIndex());
      cmbMessageType.setSelectedIndex(config.midi_message);
      cmbChannel.setSelectedIndex(config.midi_channel);
      cmbData1.setSelectedIndex(config.data_1);
      cmbData2.setSelectedIndex(config.data_2);

      cmbData3.setSelectedIndex(config.lower_midi);
      cmbData3.setEnabled( config.scale_input);
      if (config.scale_input)
      {
        lblData2.setText("Lower Threshold");
      }
      else
      {
        lblData2.setText("Data Byte 2");
      }

      chkScaleInput.setSelected(config.scale_input);

      chkMidiOut2.setSelected(config.midi_out2);
      chkMidiOut2.setVisible(!config.scale_input);

      chkMute.setSelected(config.mute);
      chkMute.setVisible(!config.scale_input);

      rdData1.setSelected(config.data1_vary);
      rdData1.setVisible(!config.scale_input);

      rdData2.setSelected(!config.data1_vary);
      rdData2.setVisible(!config.scale_input);

      chkInvert.setSelected(config.invert);
      chkInvert.setVisible(!config.scale_input);

      chkGenReset.setSelected(config.generate_initial);
      chkGenReset.setVisible(!config.scale_input);

      chkHighRes.setSelected(config.high_resolution);
      chkHighRes.setVisible(!config.scale_input);

      reading = false;
      //group.(rdData1, config.data1_vary);
    }
  }

  public void WriteConfig(){
    if (initialised && ! reading)
    {
      MidiConfig config = new MidiConfig();
      config.midi_message = cmbMessageType.getSelectedIndex();
      config.midi_channel = cmbChannel.getSelectedIndex();
      config.data_1 = cmbData1.getSelectedIndex();
      config.data_2 = cmbData2.getSelectedIndex();
      config.lower_midi = cmbData3.getSelectedIndex();

      config.midi_out2 = chkMidiOut2.isSelected();
      config.mute = chkMute.isSelected();
      config.data1_vary = rdData1.isSelected();
      config.invert = chkInvert.isSelected();
      config.generate_initial = chkGenReset.isSelected();
      config.high_resolution = chkHighRes.isSelected();
      config.scale_input = chkScaleInput.isSelected();

      config.SetMidiConfig(cmbDevice.getSelectedIndex());
      MainFrame.Reload();
    }
  }
  private void LoadCombos (){
      //load the combo boxes
      for (int i = 1; i <=16; i++)
      {
        String PortName = new String ("CV Input") + String.valueOf(i);
        cmbDevice.addItem (PortName);
      }

      for(int i = 1; i <= 16; i++)
          cmbChannel.addItem(String.valueOf(i));//ad midi channels


      //load values in the channel box
      for (int i = 0; i <= 127; i++)
          {
          cmbData1.addItem(String.valueOf(i));
          cmbData2.addItem(String.valueOf(i));
          cmbData3.addItem(String.valueOf(i));
          }

      for (int i = 1; i <=16; i++)
      {
        String PortName = new String ("Switch Input") + String.valueOf(i);
        cmbDevice.addItem (PortName);
      }

      for (int i = 1; i <= 8; i++)
      {
        String PortName = new String ("Analogue Output") + String.valueOf(i);
        cmbDevice.addItem (PortName);
      }

      for (int i = 1; i <=8; i++)
      {
        String PortName = new String ("Digital Output") + String.valueOf(i);
        cmbDevice.addItem(PortName);
      }

      cmbMessageType.addItem(new String("Note Off"));
      cmbMessageType.addItem(new String("Note On"));
      cmbMessageType.addItem(new String("Polyphonic Pressure"));
      cmbMessageType.addItem(new String("Control Change"));
      cmbMessageType.addItem(new String("Program Change"));
      cmbMessageType.addItem(new String("Channel Pressure"));
      cmbMessageType.addItem(new String("Pitch Bend"));

      cmbDevice.setSelectedIndex(0);
      cmbChannel.setSelectedIndex(0);

  }
  private void jbInit() throws Exception  {
    contentPane = (JPanel) this.getContentPane();
    contentPane.setLayout(null);
    cmbDevice.setBounds(new Rectangle(12, 34, 132, 19));
    cmbDevice.addActionListener(new MidiDevice_cmbDevice_actionAdapter(this));
    chkMidiOut2.setText("Midi Output 2");
    chkMidiOut2.setBounds(new Rectangle(164, 21, 132, 16));
    chkMidiOut2.addActionListener(new MidiDevice_chkMidiOut2_actionAdapter(this));
    chkMute.setText("Mute");
    chkMute.setBounds(new Rectangle(164, 43, 126, 16));
    chkMute.addActionListener(new MidiDevice_chkMute_actionAdapter(this));
    jLabel1.setRequestFocusEnabled(true);
    jLabel1.setText("Device");
    jLabel1.setBounds(new Rectangle(12, 16, 101, 15));
    cmbMessageType.setBounds(new Rectangle(12, 79, 135, 19));
    cmbMessageType.addActionListener(new MidiDevice_cmbMessageType_actionAdapter(this));
    jLabel2.setText("Message Type");
    jLabel2.setBounds(new Rectangle(12, 62, 118, 15));
    cmbChannel.setBounds(new Rectangle(164, 79, 69, 19));
    cmbChannel.addActionListener(new MidiDevice_cmbChannel_actionAdapter(this));
    jLabel3.setText("Midi Channel");
    jLabel3.setBounds(new Rectangle(164, 62, 70, 14));
    rdData1.setSelected(true);
    rdData1.setText("Data 1 Varies");
    rdData1.setBounds(new Rectangle(12, 143, 132, 15));
    rdData1.addActionListener(new MidiDevice_rdData1_actionAdapter(this));
    rdData2.setText("Data 2 Varies");
    rdData2.setBounds(new Rectangle(162, 144, 119, 16));
    rdData2.addActionListener(new MidiDevice_rdData2_actionAdapter(this));
    chkInvert.setText("Invert");
    chkInvert.setBounds(new Rectangle(12, 165, 132, 15));
    chkInvert.addActionListener(new MidiDevice_chkInvert_actionAdapter(this));
    chkGenReset.setText("Generate on Reset");
    chkGenReset.setBounds(new Rectangle(162, 168, 132, 15));
    chkGenReset.addActionListener(new MidiDevice_chkGenReset_actionAdapter(this));
    this.setResizable(false);
    contentPane.setMinimumSize(new Dimension(1, 1));
    contentPane.setPreferredSize(new Dimension(300, 220));
    cmbData1.setBounds(new Rectangle(12, 122, 73, 19));
    cmbData1.addActionListener(new MidiDevice_cmbData1_actionAdapter(this));
    cmbData2.setBounds(new Rectangle(99, 120, 95, 19));
    cmbData2.addActionListener(new MidiDevice_cmbData2_actionAdapter(this));
    jLabel4.setText("Data Byte 1");
    jLabel4.setBounds(new Rectangle(12, 107, 70, 15));
    lblData2.setText("Data Byte 2");
    lblData2.setBounds(new Rectangle(101, 108, 93, 15));
    chkHighRes.setText("Use two MIDI Messages");
    chkHighRes.setBounds(new Rectangle(13, 186, 148, 22));
    chkHighRes.addActionListener(new MidiDevice_chkHighRes_actionAdapter(this));
    cmbData3.setBounds(new Rectangle(205, 121, 73, 19));
    cmbData3.addActionListener(new MidiDevice_cmbData3_actionAdapter(this));
    chkScaleInput.setToolTipText("");
    chkScaleInput.setText("Scale Input");
    chkScaleInput.setBounds(new Rectangle(162, 188, 104, 14));
    chkScaleInput.addActionListener(new MidiDevice_chkScaleInput_actionAdapter(this));
    jLabel6.setToolTipText("");
    jLabel6.setText("Upper Threshold");
    jLabel6.setBounds(new Rectangle(203, 107, 96, 13));
    contentPane.add(jLabel3, null);
    contentPane.add(chkMidiOut2, null);
    contentPane.add(chkMute, null);
    contentPane.add(cmbChannel, null);
    contentPane.add(cmbMessageType, null);
    contentPane.add(jLabel1, null);
    contentPane.add(cmbDevice, null);
    contentPane.add(jLabel2, null);
    contentPane.add(chkInvert, null);
    contentPane.add(chkGenReset, null);
    contentPane.add(rdData1, null);
    contentPane.add(cmbData1, null);
    contentPane.add(jLabel4, null);
    contentPane.add(chkHighRes, null);
    contentPane.add(lblData2, null);
    contentPane.add(cmbData2, null);
    group.add(rdData1);
    group.add(rdData2);
    contentPane.add(cmbData3, null);
    contentPane.add(jLabel6, null);
    contentPane.add(rdData2, null);
    contentPane.add(chkScaleInput, null);
  }

  void cmbDevice_actionPerformed(ActionEvent e) {
    ReadConfig();
  }

  void cmbMessageType_actionPerformed(ActionEvent e) {
    WriteConfig();
  }

  void chkMidiOut2_actionPerformed(ActionEvent e) {
    WriteConfig();
  }

  void chkMute_actionPerformed(ActionEvent e) {
    WriteConfig();
  }

  void cmbChannel_actionPerformed(ActionEvent e) {
    WriteConfig();
  }

  void cmbData1_actionPerformed(ActionEvent e) {
    WriteConfig();
  }

  void cmbData2_actionPerformed(ActionEvent e) {
    WriteConfig();
  }

  void rdData1_actionPerformed(ActionEvent e) {
    WriteConfig();
  }

  void rdData2_actionPerformed(ActionEvent e) {
    WriteConfig();
  }

  void chkInvert_actionPerformed(ActionEvent e) {
    WriteConfig();
  }

  void chkGenReset_actionPerformed(ActionEvent e) {
    WriteConfig();
  }

  void chkHighRes_actionPerformed(ActionEvent e) {
    WriteConfig();
  }

  void cmbData3_actionPerformed(ActionEvent e) {
    WriteConfig();
  }

  void chkScaleInput_actionPerformed(ActionEvent e) {
    WriteConfig();
  }


}

class MidiDevice_cmbDevice_actionAdapter implements java.awt.event.ActionListener {
  MidiDevice adaptee;

  MidiDevice_cmbDevice_actionAdapter(MidiDevice adaptee) {
    this.adaptee = adaptee;
  }
  public void actionPerformed(ActionEvent e) {
    adaptee.cmbDevice_actionPerformed(e);
  }
}

class MidiDevice_cmbMessageType_actionAdapter implements java.awt.event.ActionListener {
  MidiDevice adaptee;

  MidiDevice_cmbMessageType_actionAdapter(MidiDevice adaptee) {
    this.adaptee = adaptee;
  }
  public void actionPerformed(ActionEvent e) {
    adaptee.cmbMessageType_actionPerformed(e);
  }
}

class MidiDevice_chkMidiOut2_actionAdapter implements java.awt.event.ActionListener {
  MidiDevice adaptee;

  MidiDevice_chkMidiOut2_actionAdapter(MidiDevice adaptee) {
    this.adaptee = adaptee;
  }
  public void actionPerformed(ActionEvent e) {
    adaptee.chkMidiOut2_actionPerformed(e);
  }
}

class MidiDevice_chkMute_actionAdapter implements java.awt.event.ActionListener {
  MidiDevice adaptee;

  MidiDevice_chkMute_actionAdapter(MidiDevice adaptee) {
    this.adaptee = adaptee;
  }
  public void actionPerformed(ActionEvent e) {
    adaptee.chkMute_actionPerformed(e);
  }
}

class MidiDevice_cmbChannel_actionAdapter implements java.awt.event.ActionListener {
  MidiDevice adaptee;

  MidiDevice_cmbChannel_actionAdapter(MidiDevice adaptee) {
    this.adaptee = adaptee;
  }
  public void actionPerformed(ActionEvent e) {
    adaptee.cmbChannel_actionPerformed(e);
  }
}

class MidiDevice_cmbData1_actionAdapter implements java.awt.event.ActionListener {
  MidiDevice adaptee;

  MidiDevice_cmbData1_actionAdapter(MidiDevice adaptee) {
    this.adaptee = adaptee;
  }
  public void actionPerformed(ActionEvent e) {
    adaptee.cmbData1_actionPerformed(e);
  }
}

class MidiDevice_cmbData2_actionAdapter implements java.awt.event.ActionListener {
  MidiDevice adaptee;

  MidiDevice_cmbData2_actionAdapter(MidiDevice adaptee) {
    this.adaptee = adaptee;
  }
  public void actionPerformed(ActionEvent e) {
    adaptee.cmbData2_actionPerformed(e);
  }
}

class MidiDevice_rdData1_actionAdapter implements java.awt.event.ActionListener {
  MidiDevice adaptee;

  MidiDevice_rdData1_actionAdapter(MidiDevice adaptee) {
    this.adaptee = adaptee;
  }
  public void actionPerformed(ActionEvent e) {
    adaptee.rdData1_actionPerformed(e);
  }
}

class MidiDevice_rdData2_actionAdapter implements java.awt.event.ActionListener {
  MidiDevice adaptee;

  MidiDevice_rdData2_actionAdapter(MidiDevice adaptee) {
    this.adaptee = adaptee;
  }
  public void actionPerformed(ActionEvent e) {
    adaptee.rdData2_actionPerformed(e);
  }
}

class MidiDevice_chkInvert_actionAdapter implements java.awt.event.ActionListener {
  MidiDevice adaptee;

  MidiDevice_chkInvert_actionAdapter(MidiDevice adaptee) {
    this.adaptee = adaptee;
  }
  public void actionPerformed(ActionEvent e) {
    adaptee.chkInvert_actionPerformed(e);
  }
}

class MidiDevice_chkGenReset_actionAdapter implements java.awt.event.ActionListener {
  MidiDevice adaptee;

  MidiDevice_chkGenReset_actionAdapter(MidiDevice adaptee) {
    this.adaptee = adaptee;
  }
  public void actionPerformed(ActionEvent e) {
    adaptee.chkGenReset_actionPerformed(e);
  }
}

class MidiDevice_chkHighRes_actionAdapter implements java.awt.event.ActionListener {
  MidiDevice adaptee;

  MidiDevice_chkHighRes_actionAdapter(MidiDevice adaptee) {
    this.adaptee = adaptee;
  }
  public void actionPerformed(ActionEvent e) {
    adaptee.chkHighRes_actionPerformed(e);
  }
}

class MidiDevice_cmbData3_actionAdapter implements java.awt.event.ActionListener {
  MidiDevice adaptee;

  MidiDevice_cmbData3_actionAdapter(MidiDevice adaptee) {
    this.adaptee = adaptee;
  }
  public void actionPerformed(ActionEvent e) {
    adaptee.cmbData3_actionPerformed(e);
  }
}

class MidiDevice_chkScaleInput_actionAdapter implements java.awt.event.ActionListener {
  MidiDevice adaptee;

  MidiDevice_chkScaleInput_actionAdapter(MidiDevice adaptee) {
    this.adaptee = adaptee;
  }
  public void actionPerformed(ActionEvent e) {
    adaptee.chkScaleInput_actionPerformed(e);
  }
}