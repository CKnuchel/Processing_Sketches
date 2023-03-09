void createField () {
  background(255);
  for ( int y = 0; y < ANZAHL_FELDER; y++) {
    fill(255);
    for ( int x = 0; x < ANZAHL_FELDER; x++) {
      fill(255);
      square((x * FELD_GROESSE), (y * FELD_GROESSE), FELD_GROESSE);
    }
  }
}

void movementPlayer() {
  switch(key) {
  case 'w':
    if (!invertetMovement) {
      spielerY--;
      break;
    } else {
      spielerY++;
      break;
    }

  case 'a':
    if (!invertetMovement) {
      spielerX--;
      break;
    } else {
      spielerX++;
      break;
    }

  case 's':
    if (!invertetMovement) {
      spielerY++;
      break;
    } else {
      spielerY--;
      break;
    }

  case 'd':
    if (!invertetMovement) {
      spielerX++;
      break;
    } else {
      spielerX--;
      break;
    }
  }
}

void getPlayerPos() {
  posX = spielerX * FELD_GROESSE;
  posY = spielerY * FELD_GROESSE;
}

void createPlayer() {
  fill(0);
  square(posX, posY, FELD_GROESSE);
}

void checkLimit() {
  if (spielerX > ANZAHL_FELDER - 1) {
    spielerX = 0;
  }
  if (spielerY > ANZAHL_FELDER - 1) {
    spielerY = 0;
  }
  if (spielerX < 0) {
    spielerX = ANZAHL_FELDER - 1;
  }
  if (spielerY < 0) {
    spielerY = ANZAHL_FELDER - 1;
  }
}


void createGoodie() {
  fill(136, 0, 255);
  square(posGoodieX, posGoodieY, FELD_GROESSE);
}

void setGoodiePos() {
  posGoodieX = goodieX * FELD_GROESSE;
  posGoodieY = goodieY * FELD_GROESSE;
}

void getRandomGoodiePos() {
  while (!goodie) {
    goodieX = (int)random(0, ANZAHL_FELDER);
    goodieY = (int)random(0, ANZAHL_FELDER);
    goodie = !goodie;
  }
}


void catchedGoodie() {
  if (spielerX == goodieX && spielerY == goodieY) {
    score += 100;
    coinSound.play();
    invertetMovement = false;
    goodie = !goodie;
  }
}

void showScore() {
  fill(0);
  textSize(sizeText);
  String scoreText = "Score: " + score;
  int scorePosX = (ANZAHL_FELDER * FELD_GROESSE) + (sizeText / 2);
  text(scoreText, scorePosX, sizeText);
}

void gameOver() {
  background(0);
  fill(255);
  text("GAME OVER", (width / 2.6), (height / 2) - (sizeText / 2));
}

void playSound() {
//backgroundSound.play();
backgroundSound.loop();
}
