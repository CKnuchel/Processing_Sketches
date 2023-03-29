void setup() {

  size(800, 600);
}

void draw() {
  int posY = mouseY;
  int posX = mouseX;

  if (posY < 300) {
    background(0);
    fill(255);
  } else {
    background(255);
    fill(0);
    }
  circle(posX, posY, 50);
}
