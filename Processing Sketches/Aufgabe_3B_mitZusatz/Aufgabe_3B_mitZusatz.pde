int posX = 300;
int posY = 400;
int speedY = 2;
int speedX = 6;
int diameter = 150;



void setup() {
  fullScreen();
}

void draw() {
  //Regenbogen Punkt!!!
  int rot = int(random(0, 255));
  int gruen = int(random(0, 255));
  int blau = int(random(0, 255));

  background(0);
  fill(rot, gruen, blau);
  circle(posX, posY, diameter);

  posX = posX + speedX;
  posY = posY + speedY;

  //wenn der Punkt den rechten Rand erreicht, wir die Richtung geaendert
  if (posX >= width) {
    speedX++;
    speedX = speedX * (-1);
  }

  //wenn der Punkt links ist und gegen links beschleunigt, wird die Richtung nach rechts geaendert
  if (posX <=0 && speedX <0) {
    speedX--;
    speedX = speedX * (-1);
  }
  //wenn der Punkt den oberen Rand erreicht, wir die Richtung geaendert
  if (posY >= height) {
    speedY++;
    speedY = speedY * (-1);
  }
  //wenn der Punkt unten ist und gegen unten beschleunigt, wird die Richtung nach oben geaendert
  if (posY <=0 && speedY <0) {
    speedY--;
    speedY = speedY * (-1);
  }
}
