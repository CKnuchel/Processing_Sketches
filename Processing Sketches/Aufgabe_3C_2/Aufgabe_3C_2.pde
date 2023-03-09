import javax.swing.*;
int getNumberFromUser(String prompt) {
  String input = JOptionPane.showInputDialog(prompt);
  int value = Integer.parseInt(input);
  return value;
}
void setup() {

  textSize(32);
  size(800, 600);

  int iq = getNumberFromUser("Wie hoch ist dein IQ?");
  String grundAusgabe = "Dein IQ ist ";
  if (iq == 40 || iq <89) {
    text((grundAusgabe + "Unterdurchschnittlich"), 200, 300);
  } else if (iq > 89 || iq <=109) {
    text((grundAusgabe + "Durchschnittlich"), 200, 300);
  } else if (iq > 109 || iq <= 119) {
    text((grundAusgabe + "Hoch"), 200, 300);
  } else if (iq > 119 || iq <= 129) {
    text((grundAusgabe + "Sehr hoch"), 200, 300);
  } else if ( iq > 129 || iq<=159) {
    text((grundAusgabe + "Hochbegabt"), 200, 300);
  }else {
  text(("Dieser Wert hat keine Aussagekraft..."),200, 300);
  }
}
