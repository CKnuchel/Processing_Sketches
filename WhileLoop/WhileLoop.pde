void setup() {

  int zahl = 0;
  int zaehler = 0;
  while ( zahl <= 26) {
    zahl = int(random(30));
    if (zahl <= 26) {
      println(zahl);
      zaehler++;
    }
  }

  println("Es wurden " + zaehler + " Zahl(en) ausgegeben, die kleiner als 26 sind.");
}
