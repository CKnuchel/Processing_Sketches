import javax.swing.*;

void setup () {

  int counter = 0;
  final String SECRET_PW = "geheim";
  String userInput;
  boolean loginStatus = false;

  do {
    userInput = getStringFromUser("Bitte, gib dein Passwort ein");
    counter++;
    if (SECRET_PW.equals(userInput)) {
      loginStatus = !loginStatus;
    }
  } while (loginStatus == false && counter < 3);

 if (loginStatus == true) {
    println("Welcome Neo…you are in!");
  } else{
  println("Please go away!");
  }
}
