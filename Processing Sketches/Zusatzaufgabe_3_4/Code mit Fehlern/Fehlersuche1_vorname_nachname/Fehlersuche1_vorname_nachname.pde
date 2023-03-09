import javax.swing.JOptionPane;

void setup() {

  size(400, 400);


  textSize(30); // Schriftgrösse
  text("> > > ALPHABETHICS < < <", 10, 40);
  textSize(20)
  fill(240, 240, 0);
  text("Gibt einen Bereich von Buchstaben im Alphabet aus", 10, 30);
  text("===============================", 10, 60);


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
  fill(0, 0, 255); //rote Buchstaben

  for (int zeichen = startZeichen; zeichen < endZeichen; zeichen--); {
    
    text((char)zeichen, xOffset, 80 + yOffset);

    if (counter % 8 == 0) 
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
