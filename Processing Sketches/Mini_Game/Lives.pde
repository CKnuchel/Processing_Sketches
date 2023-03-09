void lebensSystem() {
  int lebenPosX;

  lebenPosX = (ANZAHL_FELDER * FELD_GROESSE) + (sizeText / 2);

  for (int i = 0; i < leben; i++) {
    image(hearth, lebenPosX + (i * 30), sizeText * 2, FELD_GROESSE, FELD_GROESSE);
  }
  
  if (leben <= 0){
  play = !play;
  }
}
