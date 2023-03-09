import javax.swing.*;

void setup() {

  int student = 0;
  int normalerEintritt = 0;
  int goenner = 0;
  boolean zaehlenEintritte = true;
  int eingabe = 0;
  int preisStudent = 5;
  int preisNormalerEintritt = 10;
  int preisGoenner = 15;

  do {
    eingabe = getNumberFromUser("Gib die Kundenkategorie ein, 1 = Student , 2 = normal , 3= Gönner, 4 = Auswertung");
    
    if(eingabe == 1){
    student++;
    eingabe = 0;
    }else if (eingabe == 2){
    normalerEintritt++;
    eingabe = 0;
    }else if (eingabe == 3){
    goenner++;
    eingabe = 0;
    }else if ( eingabe == 4){
    zaehlenEintritte = false;
    }
  } while (zaehlenEintritte);
  
  //Auswertung
  println("****");
  println("Auswertung");
  println("Anzahl Studenten: " + student);
  println("Total Kasse Studenten: " + (student * preisStudent) + " .-");
  println("Anzahl Normal: " + normalerEintritt);
  println("Total Kasse Normal: " + (normalerEintritt * preisNormalerEintritt) + " .-");
  println("Anzahl Gönner: " + goenner);
  println("Total Kasse Gönner: " + (goenner * preisGoenner) + " .-");
  println("****");
}
