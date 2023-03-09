void setup() {

  size(600, 100);
  int kreisX = 25;
  int kreisY = 50;
  int durchmesser = 10;
  int anzahlKreise = 25;
  int farbe = 0;

  for (int i = 1; i <= anzahlKreise; i++) {
    fill(farbe);
    circle(kreisX, kreisY, durchmesser);
    kreisX = kreisX + (2*durchmesser);
    farbe = farbe + (255/anzahlKreise);
  }
}
