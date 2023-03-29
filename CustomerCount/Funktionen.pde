
String getStringFromUser(String prompt) { 
  String input = JOptionPane.showInputDialog(prompt); 
  if (input == null) input = "cancel"; 
  return input; 
} 



int getNumberFromUser(String prompt) {
  String input = JOptionPane.showInputDialog(prompt);
  int value = Integer.parseInt(input);
  return value;
}
