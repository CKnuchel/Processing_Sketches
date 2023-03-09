void setup() {



  //zusatzaufgabe 1_1
  //Berechnen von Körperflächen, nach Formel KOF = (h*w)/3600

  int fensterx = 1000;
  int fenstery = 650;
  float koerpergroesse = 1.80;
  float gewicht = 58;
  float produktHW;
  float zwischenergebnis;
  float kof;
  float textPosX;
  float textPosY;
  int textGroesse = 32;


  size(800, 600);
  background(0);

  // hier wird die obere multiplikation der Rechnung durchefuehrt
  produktHW = koerpergroesse * gewicht;

  // hier wird das Ergebnis, welches in der Wurzelrechnung verwendet wird gespeichert
  zwischenergebnis =  produktHW / 3600;

  //hier wird der KOF berechnet
  kof = sqrt(zwischenergebnis);

  textSize(textGroesse);

  // hier wird die Position im Fenster definiert, damit ist diese immer zentriert
  textPosX = (fensterx / textGroesse);
  textPosY = fenstery / 2;
    text("Deine Körperoberfläche beträgt: " + kof + "m²", textPosX, textPosY);
}
