void setup() {

  //Zusatzaufgabe 1_2

  int zahl1 = 42;
  int zahl2 = 48;
  int zahl3 = 102;
  int biggest1and2;
  int groessteZahl;

  //hier wird die grösste Zahl zwischen 1 und 2 gespeichert
  if (zahl1 > zahl2) {
    biggest1and2 = zahl1;
  } else {
    biggest1and2 = zahl2;
  }

  if (zahl3 > biggest1and2) {
    groessteZahl = zahl3;
  } else {
    groessteZahl = biggest1and2;
  }

  println("Die grösste Zahl ist: " + groessteZahl);
}
