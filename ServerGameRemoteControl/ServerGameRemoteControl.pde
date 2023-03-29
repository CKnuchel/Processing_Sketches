import java.net.*;
import javax.swing.*;

void setup() {
  String name = "Christoph";
  String xKoordinate;
  String yKoordinate;
  String ip = "172.29.1.18";
  int port = 49876;
  String serverAntwort;

  while (true) {
    //name = getStringFromUser("Gib bitte deinen Namen ein");
    xKoordinate = getStringFromUser("Gib deine X-Koordinate ein");
    yKoordinate = getStringFromUser("Gib deine Y-Koordinate ein");


    String weitergabe = name + ";" + xKoordinate + ";" + yKoordinate;

    serverAntwort = sendViaUDP(weitergabe, ip, port);

    println(serverAntwort);

    if ( serverAntwort == "1") {
      println("Name darf nicht leer sein");
    } else if ( serverAntwort == "2") {
      println("X oder Y ausserhalb des Spielfeldes");
    } else if ( serverAntwort == "3") {
      println("Fehler beim Konvertieren von X und Y");
    } else if ( serverAntwort == "4") {
      println("Anfrage entspricht nicht dem Format name;x;y");
    }
  }
}

String sendViaUDP(String message, String ipAdr, int port) { 
  String errorMessage = ""; 

  try { 
    InetAddress ip = InetAddress.getByName(ipAdr); 
    byte[] data = new byte[20]; 
    byte[] receiveData = new byte[8];  
    data = message.getBytes(); 

    DatagramPacket packet = new DatagramPacket(data, data.length, ip, port);
    DatagramSocket socket = new DatagramSocket(); 
    socket.send(packet); 

    DatagramPacket receivePacket = new DatagramPacket(receiveData, receiveData.length); 
    socket.setSoTimeout(1000); 
    socket.receive(receivePacket); 
    socket.close(); 

    String response = new String(receivePacket.getData()); 

    if (response.contains(";")) { 
      errorMessage = response.split(";")[1];
    } 

    return errorMessage;
  }  
  catch (Exception e) { 
    return e.toString();
  }
}

String getStringFromUser(String prompt) { 
  String input = JOptionPane.showInputDialog(prompt); 
  if (input == null) input = "cancel"; 
  return input;
} 
