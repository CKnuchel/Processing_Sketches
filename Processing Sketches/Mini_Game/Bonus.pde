void bonusScore(){
  
  while (!bonusSpawn) {
    bonusX = (int)random(0, ANZAHL_FELDER);
    bonusY = (int)random(0, ANZAHL_FELDER);
    if (bonusX != goodieX && bonusY != goodieY && bonusX != toxinX && bonusY != toxinY) {
      bonusSpawn = !bonusSpawn;
    }
  }

  posBonusX = bonusX * FELD_GROESSE;
  posBonusY = bonusY * FELD_GROESSE;

  image(bonusBild, posBonusX, posBonusY, FELD_GROESSE, FELD_GROESSE);
  
  
  if(spielerX == bonusX && spielerY == bonusY){
  score += 500;
  coinSound.play();
  bonusSpawn = !bonusSpawn;
  invertetMovement = false;
  }
}
