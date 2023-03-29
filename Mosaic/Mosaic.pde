color rot;
color blau;
color gruen;
float posY;
final float ROTATION_ANGLE = 0.1;
float rotation;

void setup() {
  rectMode(CENTER);
  int anzahlQuadrate = 50;
  int size = width / anzahlQuadrate;
  noStroke();

  size(800, 800);
  for ( int y = 0; y <= height; y += size) {
    posY += size;
    for ( int x = 0; x <= width; x += size) {
      rotation = random(-ROTATION_ANGLE, ROTATION_ANGLE);
      rot = (int)random(255);
      blau = (int)random(255);
      gruen = (int)random(255);
      fill(rot, gruen, blau);
      translate(x, y);
      rotate(rotation);
      square(size / 2, size / 2, size);
      rotate(-rotation);
      translate(-x, -y);

    }
  }
}
