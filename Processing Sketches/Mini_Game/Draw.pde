void draw() {

  if (play) {

    createField(); // Erstellt das Spielfeld

    checkLimit(); //Prüft ob der Spieler noch im Feld ist, sonst wird er zurück gesetzt

    getPlayerPos(); //Holt die Position des Spieler

    getRandomGoodiePos(); //Setzt eine Random Goodie Position

    setGoodiePos(); //Setzt die Position des Goodie
    
    if (score > 800){
    toxinTrap (); //Kehrt die Steuerung um
    }
    
    movementPlayer(); //Bewegt den Spieler
    
    if (score > 600) { //Spawnt den gegner erst über 200 Punkten
      enemy();
    }
    
    if(score > 400){
    bonusScore();
    }
    
    createPlayer(); //Erstellt den Spieler

    createGoodie(); //Zeichnet das Goodie

    catchedGoodie(); //Kontrolliert ob das Goodie gefangen wurde

    showScore(); //Zeigt den Score oben rechts an
    
    lebensSystem();
    
  } else {
    gameOver();
    todesSound.play();
    backgroundSound.stop();
  }
}
