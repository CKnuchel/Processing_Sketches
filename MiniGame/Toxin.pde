void toxinTrap () {

  while (!toxinSpawn) {
    toxinX = (int)random(0, ANZAHL_FELDER);
    toxinY = (int)random(0, ANZAHL_FELDER);
    if (toxinX != goodieX && toxinY != goodieY) {
      toxinSpawn = !toxinSpawn;
    }
  }

  posToxinX = toxinX * FELD_GROESSE;
  posToxinY = toxinY * FELD_GROESSE;

  image(toxin, posToxinX, posToxinY, FELD_GROESSE, FELD_GROESSE);
  
  
  if(spielerX == toxinX && spielerY == toxinY){
  invertetMovement = true;
  toxinSpawn = !toxinSpawn;
  }
}
