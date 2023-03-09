void setup() {
  frameRate(5);
  backgroundSound = new SoundFile(this, "8bit-music-for-game-68698.wav");
  todesSound = new SoundFile(this, "videogame-death-sound-43894.wav");
  coinSound = new SoundFile(this,"gameboy-pluck-41265-_1_.wav");
  toxin = loadImage(webLinkToxin, "png");
  enemySkin = loadImage(webLinkEnemy, "png");
  bonusBild = loadImage(webLinkBonus, "png");
  hearth = loadImage(webLinkLives, "png");
  
      
    playSound();
}
