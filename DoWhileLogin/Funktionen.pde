
String getStringFromUser(String prompt) { 
  String input = JOptionPane.showInputDialog(prompt); 
  if (input == null) input = "cancel"; 
  return input; 
} 
