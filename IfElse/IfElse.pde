import javax.swing.*;

int getNumberFromUser(String prompt) {
  String input = JOptionPane.showInputDialog(prompt);
  int value = Integer.parseInt(input);
  return value;
}
void setup() {

  textSize(32);
  size(800, 600);

  int zahl1 = getNumberFromUser("Bitte gib die erste Nummer ein");

  int zahl2 = getNumberFromUser("Bitte gib die zweite Nummer ein");

  if (zahl1 == zahl2) {
    text(("Die Zahlen sind gleich gross"), 200, 300);
  } else if (zahl1 > zahl2) {
    text(("Die erste Zahl ist groesser"), 200, 300);
  } else {
    text(("Die zweite Zahl ist groesser"), 200, 300);
  }
}
