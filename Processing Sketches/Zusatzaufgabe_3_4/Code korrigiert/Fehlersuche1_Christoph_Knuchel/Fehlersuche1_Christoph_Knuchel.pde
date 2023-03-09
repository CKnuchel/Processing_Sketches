import javax.swing.JOptionPane;

void setup() {

  size(600, 600); //angepasst da Schrift zu gross wäre


  textSize(30); // Schriftgrösse
  text("> > > ALPHABETHICS < < <", 10, 40);
  textSize(20); //Fehlte Semicolon
  fill(240, 240, 0);
  text("Gibt einen Bereich von Buchstaben im Alphabet aus", 10, 70); //
  text("===============================", 10, 90);


  char startZeichen = 'z';
  char endZeichen = 'a';

  while (startZeichen > endZeichen) {
    startZeichen = holeZeichenVomUser("Bei welchem Buchstaben starten?");
    endZeichen = holeZeichenVomUser("Bei welchem Buchstaben stoppen?");
  }  

  int xOffset = 5; //x-Position der Zeichen
  int yOffset = 100; //y-Position der Zeichen schieben
  int counter = 1; //um zu bestimmen, ob Zeilenumbruch nötig

  textSize(20);
  fill(255, 0, 0); //rote Buchstaben
  
  //Zeichen war -- statt ++
  // bei Bedingung zu <= geändert, damit der Z angezeigt wird

  for (int zeichen = startZeichen; zeichen <= endZeichen; zeichen++) {

    text((char)zeichen, xOffset, 80 + yOffset);

    if (counter % 5 == 0) //von 8 auf 5 angepasst
    {
      xOffset = 5;
      yOffset += 40;
    } else {
      xOffset += 20;
    }

    counter++;
  }
}


char holeZeichenVomUser(String anzeige) {
  String eingabe = JOptionPane.showInputDialog(anzeige);
  char zeichen = eingabe.charAt(0);
  return zeichen;
}
