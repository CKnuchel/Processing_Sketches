void enemy() {

  //Realisiert die Bewegung des Gegner
  posEnemyX = enemyX * FELD_GROESSE;
  posEnemyY = enemyY * FELD_GROESSE;

  //Erstellt den Gegner
  fill(255, 0, 0);
  image(enemySkin, posEnemyX, posEnemyY, FELD_GROESSE, FELD_GROESSE);


  //Lässt dich verfolgen
  if (enemyX < spielerX) {
    if (enemyX < 19) {
      enemyX++;
    }
  } else if (enemyX > spielerX) {
    if (enemyX > 0) {
      enemyX--;
    }
  } else if (enemyY < spielerY) {
    if (enemyY < 19) {
      enemyY++;
    }
  } else if (enemyY > spielerY) {
    if (enemyY > 0) {
      enemyY--;
    }
  }

  if (enemyX == spielerX) {
    catchX = true;
  } else {
    catchX = false;
  }
  if (enemyY == spielerY) {
    catchY = true;
  } else {
    catchY = false;
  }


  if (catchY && catchX) {
    enemyX = (int)random(20);
    enemyY = (int)random(20);
    leben--;
  }
}
