void setup() {
  int zahl1 = 1;
  int zahl2 = 2;
  int zahl3 = 3;
  int summe;
  int differenz;
  int produkt;
  float durchschnitt;

  println(zahl1 + zahl2 + zahl3);
  zahl2 = zahl2 + 3;
  println(zahl2);
  
  summe = zahl1 + zahl2 + zahl3;
  println("Die Summe ist:" + summe);
  
  differenz = summe - zahl3;
  println("Die Differenz ist:" + differenz);
  
  produkt = zahl1 * zahl2 * zahl3;
  println("Das Produkt ist:" + produkt);
  
  durchschnitt = (zahl1 + zahl2 + zahl3) / 3;
  println("Der Durchschnitt ist:" + durchschnitt);
  
  zahl1++;
  zahl3++;
  
  println(zahl1, zahl2);
}
