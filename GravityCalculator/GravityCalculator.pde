import javax.swing.*;

float gravitation;
float strecke;
float zeit;
String berechnung;
String optionGravitation;
float antwort;
int index = 0;

void setup() {

 //fragt ob die Gravitation geändert werden soll
  optionGravitation = getStringFromUser("Möchtest du eine eigene Gravitation verwenden? [j/n]");
  //ignoriert Leertasten eingaben vor dem Wort
  while (optionGravitation.charAt(index) == ' ') { 
    index++;
  }
  //fragt die Grvitation welche der User will ab
  if (optionGravitation.charAt(index) == 'j') {
    gravitation = getFloatFromUser("Bitte gib deine Wunsch Gravitation ein");
  } else {
    gravitation = 9.81;
  }

  index = 0; // setzt den Index auf 0 zurück, damit die Funktion erneut verwendet werden kann

  berechnung = getStringFromUser("Was möchtest du berechnen? \nStrecke oder Zeit?");

  while (berechnung.charAt(index) == ' ') { 
    index++;
  }

  if ( berechnung.charAt(index) == 's' || berechnung.charAt(index) == 'S' ) {
    zeit = getFloatFromUser("Gib die Fallzeit ein");
    antwort = (gravitation * pow(zeit, 2)) / 2;
    println("Die Strecke beträgt: " + antwort + " Meter");
  } else if ( berechnung.charAt(index) == 'z' || berechnung.charAt(index) == 'Z') {
    strecke = getFloatFromUser("Bitte gib die Strecke ein (in Meter)");
    antwort = sqrt((2*strecke) / gravitation);
    println("Die Zeit beträgt: " + antwort + " Sekunden");
  }
}
