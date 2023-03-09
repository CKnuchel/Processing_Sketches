void setup() {

  size(600, 100);
  int kreisX = 25;
  int kreisY = 50;
  int durchmesser = 10;
  int anzahlKreise = 25;
  int rot = 0;
  int gruen = 0;
  int blau = 0;

  for (int i = 1; i <= anzahlKreise; i++) {
    rot = int(random(256));
    gruen = int(random(256));
    blau = int(random(256));
    fill(rot, gruen, blau);
    circle(kreisX, kreisY, durchmesser);
    kreisX = kreisX + (2*durchmesser);
  }
}
