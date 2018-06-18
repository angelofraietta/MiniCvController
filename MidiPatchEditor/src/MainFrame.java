import java.io.*;
import java.awt.*;
import java.awt.event.*;
import javax.swing.*;
import java.util.*;


/**
 * <p>Title: Midi Controller Patch Editor</p>
 * <p>Description: </p>
 * <p>Copyright: Copyright (c) 2004</p>
 * <p>Company: Angelo Fraietta</p>
 * @author Angelo Fraietta
 * @version 1.0
 */

public class MainFrame extends JFrame {
  JPanel contentPane;
  JMenuBar jMenuBar1 = new JMenuBar();
  JMenu jMenuFile = new JMenu();
  JMenuItem jMenuFileExit = new JMenuItem();
  JMenu jMenuHelp = new JMenu();
  JMenuItem jMenuHelpAbout = new JMenuItem();
  ImageIcon image1;
  ImageIcon image2;
  ImageIcon image3;
  JLabel statusBar = new JLabel();
  JPanel jPanel1 = new JPanel();
  JComboBox cmbMidiIn = new JComboBox();
  JComboBox cmbMidiOut = new JComboBox();
  JCheckBox chkMidiMerge = new JCheckBox();
  JLabel jLabel1 = new JLabel();
  JLabel jLabel2 = new JLabel();
  JPanel jPanel2 = new JPanel();
  JComboBox cmbMessageType = new JComboBox();
  JComboBox cmbChannel = new JComboBox();
  JComboBox cmbData1 = new JComboBox();
  JComboBox cmbData2 = new JComboBox();
  JLabel jLabel3 = new JLabel();
  JLabel jLabel4 = new JLabel();
  JLabel jLabel5 = new JLabel();
  JLabel jLabel6 = new JLabel();
  JButton cmdSendMidi = new JButton();
  JButton cmdFactory = new JButton();
  JMenu mnuWindow = new JMenu();
  JMenuItem mnuAddConfig = new JMenuItem();
  JButton ReadButton = new JButton();
  JButton WriteConfigButton = new JButton();
  JMenuItem mnuOpen = new JMenuItem();
  JMenuItem mnuSave = new JMenuItem();
  Vector config_list = new Vector();
  static MainFrame ThisApp = null;
  JProgressBar SendProgress = new JProgressBar();
  SysexSender updater = new SysexSender(this, 10);
  JButton cmdCancel = new JButton();
  JPanel jPanel3 = new JPanel();
  JScrollPane jScrollPane1 = new JScrollPane();
  JTextArea ReceivedMessages = new JTextArea();

  //Construct the frame
  public MainFrame() {
    enableEvents(AWTEvent.WINDOW_EVENT_MASK);
    try {
      jbInit();
      Midi.Initialise();

      System.out.println("Input Devices");
      int num_dev = Midi.NumInputDevice();
      String dev_name;
      for (int i = 0; i < num_dev; i++)
      {
        dev_name = Midi.GetInputDeviceName(i);
        System.out.println(dev_name);
        cmbMidiIn.addItem(dev_name);
      }

      System.out.println("Output Devices");
      num_dev = Midi.NumOutputDevice();
      for (int i = 0; i < num_dev; i++)
      {
        dev_name = Midi.GetOutputDeviceName(i);
        System.out.println(dev_name);
        cmbMidiOut.addItem(dev_name);
      }
      LoadMidiMessages();
      OpenMidiDevices();
      LoadData();
      SetSendStatus(false);
      ThisApp = this;
      updater.Start();
    }
    catch(Exception e) {
      e.printStackTrace();
    }

  }

  static void Reload()
  {
    ThisApp.LoadData();
  }
  public void ReadBytesTx(){
    int bytes_read = Midi.GetBytesRead();

    if (bytes_read >= SendProgress.getMaximum())
    {
      //updater.Stop();
      SetSendStatus(false);
    }
    else
    {
      SendProgress.setValue(bytes_read);
    }

  ReadMidi();
  if (Midi.ConfigChanged()){
    LoadData();
  }
  }

  public void LoadData(){
    chkMidiMerge.setSelected(Midi.GetMidiMerge());
    for (int i = 0; i < config_list.size(); i++)
    {
      MidiDevice config  = (MidiDevice) config_list.get(i);
      config.ReadConfig();
    }
  }

  private void OpenConfigFile(){
    System.out.println("OpenFromFile");
    //  Set Smart Controller Patches fileter
    JFileChooser OpenDialog = new JFileChooser ();
    //OpenDialog.setFileFilter(new PatchFileFilter());

    int ret = OpenDialog.showOpenDialog(MainFrame.this);
    if (ret == JFileChooser.APPROVE_OPTION)
    {
      File file = OpenDialog.getSelectedFile();
      String filename = file.getName();
      String filepath = OpenDialog.getCurrentDirectory().getAbsolutePath() + file.separatorChar;

      System.out.println("Path: " + filepath + filename );
      Midi.LoadConfig(filepath + filename);
      LoadData();
    }
  }


    private void SaveConfigFile(){
      System.out.println("Save");
      //  Set Smart Controller Patches fileter
      JFileChooser OpenDialog = new JFileChooser ();
      //OpenDialog.setFileFilter(new PatchFileFilter());

      int ret = OpenDialog.showSaveDialog(MainFrame.this);
      if (ret == JFileChooser.APPROVE_OPTION)
      {
        File file = OpenDialog.getSelectedFile();
        String filename = file.getName();
        String filepath = OpenDialog.getCurrentDirectory().getAbsolutePath() + file.separatorChar;

        System.out.println("Path: " + filepath + filename );
        Midi.SaveConfig(filepath + filename);
      }
    }

  private void LoadMidiMessages(){
    cmbMessageType.addItem(new String("Note Off"));
    cmbMessageType.addItem(new String("Note On"));
    cmbMessageType.addItem(new String("Polyphonic Pressure"));
    cmbMessageType.addItem(new String("Control Change"));
    cmbMessageType.addItem(new String("Program Change"));
    cmbMessageType.addItem(new String("Channel Pressure"));
    cmbMessageType.addItem(new String("Pitch Bend"));

    for (int i = 1; i <=16; i++)
    {
      cmbChannel.addItem(String.valueOf(i));
    }

    for (int i = 0; i <= 127; i++)
    {
      cmbData1.addItem(String.valueOf(i));
      cmbData2.addItem(String.valueOf(i));
    }

    // Now set the Message to Middle C
    cmbMessageType.setSelectedIndex(1); // Note on
    cmbChannel.setSelectedIndex(0);
    cmbData1.setSelectedIndex(60);
    cmbData2.setSelectedIndex(127);

  }

  private String GetMessageType (int index){
    switch (index)
    {
      case 0:
        return new String("Note Off");
      case 1:
        return new String("Note On");
      case 2:
        return new String("Polyphonic Pressure");
      case 3:
        return new String("Control Change");
      case 4:
        return new String("Program Change");
      case 5:
        return new String("Channel Pressure");
      case 6:
        return new String("Pitch Bend");
    }
    return new String("Unknown");

  }
  private void SetSendStatus(boolean isSending)
  {
    WriteConfigButton.setEnabled(!isSending);
    ReadButton.setEnabled(!isSending);
    cmdFactory.setEnabled(!isSending);
    cmdSendMidi.setEnabled(!isSending);
    cmdCancel.setEnabled(isSending);
    SendProgress.setVisible(isSending);
  }

  private void OpenMidiDevices(){
    int device_num = cmbMidiIn.getSelectedIndex();
    if (device_num >= 0)
    {
      if (Midi.SetInputDevice(device_num))
      {
        System.out.println("Opened Input Device " + Midi.GetInputDeviceName(device_num));
      }
      else
      {
        System.out.println("Unable to Open Input Device " + Midi.GetInputDeviceName(device_num));
      }
    }

    device_num = cmbMidiOut.getSelectedIndex();
    if (device_num >= 0)
    {
      if (Midi.SetOutputDevice(device_num))
      {
        System.out.println("Opened Output Device " + Midi.GetOutputDeviceName(device_num));
      }
      else
      {
        System.out.println("Unable to Open Output Device " + Midi.GetOutputDeviceName(device_num));
      }
    }

  }
  //Component initialization
  private void jbInit() throws Exception  {
    image1 = new ImageIcon(MainFrame.class.getResource("openFile.png"));
    image2 = new ImageIcon(MainFrame.class.getResource("closeFile.png"));
    image3 = new ImageIcon(MainFrame.class.getResource("help.png"));
    contentPane = (JPanel) this.getContentPane();
    contentPane.setLayout(null);
    this.setResizable(true);
    this.setSize(new Dimension(479, 388));
    this.setTitle("Midi Controller");
    statusBar.setText(" ");
    statusBar.setBounds(new Rectangle(0, 0, 479, 15));
    jMenuFile.setText("File");
    jMenuFileExit.setText("Exit");
    jMenuFileExit.addActionListener(new MainFrame_jMenuFileExit_ActionAdapter(this));
    jMenuHelp.setText("Help");
    jMenuHelpAbout.setText("About");
    jMenuHelpAbout.addActionListener(new MainFrame_jMenuHelpAbout_ActionAdapter(this));
    jPanel1.setLayout(null);
    cmbMidiIn.setBounds(new Rectangle(7, 24, 162, 19));
    cmbMidiIn.addActionListener(new MainFrame_cmbMidiIn_actionAdapter(this));
    cmbMidiOut.setBounds(new Rectangle(177, 24, 166, 18));
    cmbMidiOut.addActionListener(new MainFrame_cmbMidiOut_actionAdapter(this));
    chkMidiMerge.setText("Midi Merge");
    chkMidiMerge.setBounds(new Rectangle(344, 28, 104, 12));
    chkMidiMerge.addActionListener(new MainFrame_chkMidiMerge_actionAdapter(this));
    jLabel1.setText("Midi Input Device");
    jLabel1.setBounds(new Rectangle(9, 9, 158, 13));
    jLabel2.setText("Midi Output Device");
    jLabel2.setBounds(new Rectangle(178, 9, 159, 15));
    jPanel2.setMaximumSize(new Dimension(32767, 32767));
    jPanel2.setOpaque(true);
    jPanel2.setPreferredSize(new Dimension(200, 200));
    jPanel2.setBounds(new Rectangle(0, 51, 480, 129));
    jPanel2.setLayout(null);
    cmbMessageType.setBounds(new Rectangle(-1, 19, 122, 19));
    cmbChannel.setBounds(new Rectangle(124, 19, 67, 19));
    cmbData1.setBounds(new Rectangle(191, 19, 68, 19));
    cmbData2.setBounds(new Rectangle(259, 19, 68, 19));
    jLabel3.setText("Message Type");
    jLabel3.setBounds(new Rectangle(2, 1, 118, 16));
    jLabel4.setText("Midi Chan");
    jLabel4.setBounds(new Rectangle(128, 1, 61, 16));
    jLabel5.setText("Data 1");
    jLabel5.setBounds(new Rectangle(195, 1, 41, 16));
    jLabel6.setText("Data 2");
    jLabel6.setBounds(new Rectangle(247, 1, 41, 16));
    cmdSendMidi.setBounds(new Rectangle(327, 18, 133, 21));
    cmdSendMidi.setText("Send Midi");
    cmdSendMidi.addActionListener(new MainFrame_cmdSendMidi_actionAdapter(this));
    cmdFactory.setBounds(new Rectangle(270, 73, 190, 34));
    cmdFactory.setText("Set Factory Default");
    cmdFactory.addActionListener(new MainFrame_cmdFactory_actionAdapter(this));
    mnuAddConfig.setText("Add Configuration Window");
    mnuAddConfig.addActionListener(new MainFrame_mnuAddConfig_actionAdapter(this));
    mnuWindow.setText("Window");
    ReadButton.setBounds(new Rectangle(-2, 73, 137, 34));
    ReadButton.setText("Read Config");
    ReadButton.addActionListener(new MainFrame_ReadButton_actionAdapter(this));
    WriteConfigButton.setBounds(new Rectangle(134, 73, 137, 34));
    WriteConfigButton.setText("Write Config");
    WriteConfigButton.addActionListener(new MainFrame_WriteConfigButton_actionAdapter(this));
    contentPane.setPreferredSize(new Dimension(3, 20));
    mnuOpen.setText("Load Config");
    mnuOpen.addActionListener(new MainFrame_mnuOpen_actionAdapter(this));
    mnuSave.setText("Save Config");
    mnuSave.addActionListener(new MainFrame_mnuSave_actionAdapter(this));
    SendProgress.setMaximum(256);
    SendProgress.setBounds(new Rectangle(135, 108, 140, 18));
    cmdCancel.setBounds(new Rectangle(0, 108, 136, 18));
    cmdCancel.setText("Cancel");
    cmdCancel.addActionListener(new MainFrame_cmdCancel_actionAdapter(this));
    jPanel1.setBounds(new Rectangle(-1, 3, 479, 46));
    jPanel3.setBorder(BorderFactory.createLoweredBevelBorder());
    jPanel3.setBounds(new Rectangle(4, 202, 468, 135));
    jPanel3.setLayout(null);
    jScrollPane1.setBounds(new Rectangle(2, 3, 461, 121));
    jMenuFile.add(mnuOpen);
    jMenuFile.add(mnuSave);
    jMenuFile.add(jMenuFileExit);
    jMenuHelp.add(jMenuHelpAbout);
    jMenuBar1.add(jMenuFile);
    jMenuBar1.add(jMenuHelp);
    jMenuBar1.add(mnuWindow);
    this.setJMenuBar(jMenuBar1);
    contentPane.add(statusBar, null);
    jPanel1.add(cmbMidiIn, null);
    jPanel1.add(cmbMidiOut, null);
    jPanel1.add(jLabel2, null);
    jPanel1.add(jLabel1, null);
    jPanel1.add(chkMidiMerge, null);
    contentPane.add(jPanel3, null);
    jPanel3.add(jScrollPane1, null);
    jScrollPane1.getViewport().add(ReceivedMessages, null);
    contentPane.add(jPanel2, null);
    jPanel2.add(jLabel3, null);
    jPanel2.add(jLabel4, null);
    jPanel2.add(jLabel5, null);
    jPanel2.add(jLabel6, null);
    jPanel2.add(cmbMessageType, null);
    jPanel2.add(cmbChannel, null);
    jPanel2.add(cmbData1, null);
    jPanel2.add(cmdSendMidi, null);
    jPanel2.add(cmbData2, null);
    jPanel2.add(WriteConfigButton, null);
    jPanel2.add(SendProgress, null);
    jPanel2.add(cmdCancel, null);
    jPanel2.add(cmdFactory, null);
    jPanel2.add(ReadButton, null);
    contentPane.add(jPanel1, null);
    mnuWindow.add(mnuAddConfig);
  }
  //File | Exit action performed
  public void jMenuFileExit_actionPerformed(ActionEvent e) {
    System.exit(0);
  }
  //Help | About action performed
  public void jMenuHelpAbout_actionPerformed(ActionEvent e) {
    MainFrame_AboutBox dlg = new MainFrame_AboutBox(this);
    Dimension dlgSize = dlg.getPreferredSize();
    Dimension frmSize = getSize();
    Point loc = getLocation();
    dlg.setLocation((frmSize.width - dlgSize.width) / 2 + loc.x, (frmSize.height - dlgSize.height) / 2 + loc.y);
    dlg.setModal(true);
    dlg.pack();
    dlg.show();
  }
  //Overridden so we can exit when window is closed
  protected void processWindowEvent(WindowEvent e) {
    super.processWindowEvent(e);
    if (e.getID() == WindowEvent.WINDOW_CLOSING) {
      jMenuFileExit_actionPerformed(null);
    }
  }

  void cmdSendMidi_actionPerformed(ActionEvent e) {
    MidiMessage message = new MidiMessage();

    message.midi_message= cmbMessageType.getSelectedIndex();
    message.midi_channel = cmbChannel.getSelectedIndex();
    message.data_1 = cmbData1.getSelectedIndex();
    message.data_2 =  cmbData2.getSelectedIndex();

    message.SetMidiMessage();
//    Midi.SendMidiData(status_chan, data1, data2, cmbMidiOut.getSelectedIndex());
  }

  void cmbMidiOut_actionPerformed(ActionEvent e) {
    Midi.SetOutputDevice(cmbMidiOut.getSelectedIndex());
  }

  void cmdFactory_actionPerformed(ActionEvent e) {
    Midi.SendFactoryDefault();
  }

  void mnuAddConfig_actionPerformed(ActionEvent e) {
    MidiDevice config = new MidiDevice();
    config.pack();
    config.setVisible(true);
    config_list.add(config);
  }

  void cmbMidiIn_actionPerformed(ActionEvent e) {
    Midi.SetInputDevice(cmbMidiIn.getSelectedIndex());
  }

  void chkMidiMerge_actionPerformed(ActionEvent e) {
    Midi.SetMidiMerge(chkMidiMerge.isSelected());
  }

  void ReadButton_actionPerformed(ActionEvent e) {
    Midi.SendReadConfig();
    LoadData();
  }

  void WriteConfigButton_actionPerformed(ActionEvent e) {
    Midi.SendConfig();
    //updater.Start();
    SendProgress.setVisible(true);
    SetSendStatus(true);
  }

  void ReadMidi(){
    MidiMessage message = new MidiMessage();
    while (message.GetMidiMessage())
    {

      ReceivedMessages.append(GetMessageType(message.midi_message));
      ReceivedMessages.append (" " + String.valueOf(message.midi_channel + 1));
      ReceivedMessages.append(" " + String.valueOf(message.data_1));

      if (message.midi_message != 4 && message.midi_message != 5)
      {
          ReceivedMessages.append(" " + String.valueOf(message.data_2));
      }
      ReceivedMessages.append("\n");



      /*
      try{
        cmbMessageType.setSelectedIndex(message.midi_message);
        cmbChannel.setSelectedIndex(message.midi_channel);
        cmbData1.setSelectedIndex(message.data_1);
        cmbData2.setSelectedIndex(message.data_2);
      }
      catch(Exception ex){}
          */
    }


  }

  void mnuOpen_actionPerformed(ActionEvent e) {
     OpenConfigFile();
  }

  void mnuSave_actionPerformed(ActionEvent e) {
    SaveConfigFile();
  }

  void cmdCancel_actionPerformed(ActionEvent e) {
    Midi.CancelWrite();
    //updater.Stop();
    SetSendStatus(false);

  }
}

class MainFrame_jMenuFileExit_ActionAdapter implements ActionListener {
  MainFrame adaptee;

  MainFrame_jMenuFileExit_ActionAdapter(MainFrame adaptee) {
    this.adaptee = adaptee;
  }
  public void actionPerformed(ActionEvent e) {
    adaptee.jMenuFileExit_actionPerformed(e);
  }
}

class MainFrame_jMenuHelpAbout_ActionAdapter implements ActionListener {
  MainFrame adaptee;

  MainFrame_jMenuHelpAbout_ActionAdapter(MainFrame adaptee) {
    this.adaptee = adaptee;
  }
  public void actionPerformed(ActionEvent e) {
    adaptee.jMenuHelpAbout_actionPerformed(e);
  }
}

class MainFrame_cmdSendMidi_actionAdapter implements java.awt.event.ActionListener {
  MainFrame adaptee;

  MainFrame_cmdSendMidi_actionAdapter(MainFrame adaptee) {
    this.adaptee = adaptee;
  }
  public void actionPerformed(ActionEvent e) {
    adaptee.cmdSendMidi_actionPerformed(e);
  }
}

class MainFrame_cmbMidiOut_actionAdapter implements java.awt.event.ActionListener {
  MainFrame adaptee;

  MainFrame_cmbMidiOut_actionAdapter(MainFrame adaptee) {
    this.adaptee = adaptee;
  }
  public void actionPerformed(ActionEvent e) {
    adaptee.cmbMidiOut_actionPerformed(e);
  }
}

class MainFrame_cmdFactory_actionAdapter implements java.awt.event.ActionListener {
  MainFrame adaptee;

  MainFrame_cmdFactory_actionAdapter(MainFrame adaptee) {
    this.adaptee = adaptee;
  }
  public void actionPerformed(ActionEvent e) {
    adaptee.cmdFactory_actionPerformed(e);
  }
}

class MainFrame_mnuAddConfig_actionAdapter implements java.awt.event.ActionListener {
  MainFrame adaptee;

  MainFrame_mnuAddConfig_actionAdapter(MainFrame adaptee) {
    this.adaptee = adaptee;
  }
  public void actionPerformed(ActionEvent e) {
    adaptee.mnuAddConfig_actionPerformed(e);
  }
}

class MainFrame_cmbMidiIn_actionAdapter implements java.awt.event.ActionListener {
  MainFrame adaptee;

  MainFrame_cmbMidiIn_actionAdapter(MainFrame adaptee) {
    this.adaptee = adaptee;
  }
  public void actionPerformed(ActionEvent e) {
    adaptee.cmbMidiIn_actionPerformed(e);
  }
}

class MainFrame_chkMidiMerge_actionAdapter implements java.awt.event.ActionListener {
  MainFrame adaptee;

  MainFrame_chkMidiMerge_actionAdapter(MainFrame adaptee) {
    this.adaptee = adaptee;
  }
  public void actionPerformed(ActionEvent e) {
    adaptee.chkMidiMerge_actionPerformed(e);
  }
}

class MainFrame_ReadButton_actionAdapter implements java.awt.event.ActionListener {
  MainFrame adaptee;

  MainFrame_ReadButton_actionAdapter(MainFrame adaptee) {
    this.adaptee = adaptee;
  }
  public void actionPerformed(ActionEvent e) {
    adaptee.ReadButton_actionPerformed(e);
  }
}

class MainFrame_WriteConfigButton_actionAdapter implements java.awt.event.ActionListener {
  MainFrame adaptee;

  MainFrame_WriteConfigButton_actionAdapter(MainFrame adaptee) {
    this.adaptee = adaptee;
  }
  public void actionPerformed(ActionEvent e) {
    adaptee.WriteConfigButton_actionPerformed(e);
  }
}

class MainFrame_mnuOpen_actionAdapter implements java.awt.event.ActionListener {
  MainFrame adaptee;

  MainFrame_mnuOpen_actionAdapter(MainFrame adaptee) {
    this.adaptee = adaptee;
  }
  public void actionPerformed(ActionEvent e) {
    adaptee.mnuOpen_actionPerformed(e);
  }
}

class MainFrame_mnuSave_actionAdapter implements java.awt.event.ActionListener {
  MainFrame adaptee;

  MainFrame_mnuSave_actionAdapter(MainFrame adaptee) {
    this.adaptee = adaptee;
  }
  public void actionPerformed(ActionEvent e) {
    adaptee.mnuSave_actionPerformed(e);
  }
}


class MainFrame_cmdCancel_actionAdapter implements java.awt.event.ActionListener {
  MainFrame adaptee;

  MainFrame_cmdCancel_actionAdapter(MainFrame adaptee) {
    this.adaptee = adaptee;
  }
  public void actionPerformed(ActionEvent e) {
    adaptee.cmdCancel_actionPerformed(e);
  }
}
