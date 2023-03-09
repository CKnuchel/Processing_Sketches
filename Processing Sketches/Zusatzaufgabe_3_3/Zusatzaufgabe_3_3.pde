void setup() {
  int anzahlSteine = 6;
  int startStein = 0;
  int x = -1;

  anzahlSteine++;


  for ( int y = startStein; y <= 6; y++) {
    println();
    x++;
    for ( int i = startStein; i < anzahlSteine; i++) {
      if ( i >= x) {
        print("(" + y + "|" + i + ")");
      }
    }
  }
}
