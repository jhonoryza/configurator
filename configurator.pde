// Need G4P library
import g4p_controls.*;

public boolean createButtonPush = false;
public String savePath;
public void setup(){
  size(900, 430, JAVA2D);
  createGUI();
  customGUI();
  // Place your setup code here
  
}
PrintWriter output;
public void draw(){
  background(240);
}

public void saveToFile(){
     if(savePath != null){
       if(!filenameField.getText().isEmpty() && !idField.getText().isEmpty() 
       && !apnField.getText().isEmpty() && !smtpNameField.getText().isEmpty()
       && !smtpPassField.getText().isEmpty() && !smtpPortField.getText().isEmpty()
       && !smtpUserField.getText().isEmpty() && !emailDeviceField.getText().isEmpty()
       && !emailServerField.getText().isEmpty() && !gsmPeriodeField.getText().isEmpty()
       && !gsmSV1Field.getText().isEmpty() && !gsmSV2Field.getText().isEmpty()
       && !gsmSV3Field.getText().isEmpty() && !gsmServerField.getText().isEmpty()
       && !tempMaxField.getText().isEmpty() && !tempMinField.getText().isEmpty()
       && !rhMaxField.getText().isEmpty() && !rhMinField.getText().isEmpty() 
       && !apnField.getText().isEmpty()){
         
          String temp = savePath+"\\"+filenameField.getText() +".txt";
          output = createWriter(temp);
          output.println("device id: \"" +idField.getText() +"\"");
          output.println("smtp server: \"" +smtpNameField.getText() +"\"");
          output.println("smtp port: \"" +smtpPortField.getText() +"\"");
          output.println("smtp username: \"" +smtpUserField.getText() +"\"");
          output.println("smtp password: \"" +smtpPassField.getText() +"\"");
          output.println("email server: \"" +emailServerField.getText() +"\"");
          output.println("email device: \"" +emailDeviceField.getText() +"\"");
          output.println("gsm sms periode: \"" +gsmPeriodeField.getText() +"\"");
          output.println("gsm sms server: \"" +gsmServerField.getText() +"\"");
          output.println("gsm supervisor 1: \"" +gsmSV1Field.getText() +"\"");
          output.println("gsm supervisor 2: \"" +gsmSV2Field.getText() +"\"");
          output.println("gsm supervisor 3: \"" +gsmSV3Field.getText() +"\"");
          output.println("temp max: \"" +tempMaxField.getText() +"\"");
          output.println("temp min: \"" +tempMinField.getText() +"\"");
          output.println("rh max: \"" +rhMaxField.getText() +"\"");
          output.println("rh min: \"" +rhMinField.getText() +"\"");
          output.println("apn: \"" +apnField.getText() +"\"");
          output.flush();  // Writes the remaining data to the file
          output.close();  // Finishes the file
          ketLabel.setText("Save configuration to: "+temp);
          println("save as: " +filenameField.getText() +".txt");
          println("Save configuration to: "+temp);
       }
       else{
         ketLabel.setText("requirement field is empty"); 
       }
     } 
     else{
      ketLabel.setText("please select a directory or drive"); 
     }
}
public void browseFolder(){
 String name = G4P.selectFolder("Folder Dialog");
 ketLabel.setText("Save configuration to: "+name);
 savePath = name;
}
// Use this method to add additional statements
// to customise the GUI controls
public void customGUI(){
 
}