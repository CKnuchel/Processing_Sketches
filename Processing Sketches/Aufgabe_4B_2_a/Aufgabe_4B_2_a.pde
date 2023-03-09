void setup() {

  size(600, 100);
  int kreisX = 75;
  int kreisY = 50;
  int durchmesser = 50;
  int anzahlKreise = 10;

  for (int i = 1; i <= anzahlKreise; i++) {
    circle(kreisX, kreisY, durchmesser);
    kreisX = kreisX + durchmesser;
  }
}
