void setup() {
  size (800, 600);

  String vorname = "Christoph";
  String nachname = "Knuchel";
  String name;

  name = ("Hallo :-) ich heisse " + vorname + (" ") + nachname);
  
  textSize(32);
  text(name, 100, 300);
}
