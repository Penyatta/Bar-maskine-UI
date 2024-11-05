PImage BarSkænker;

int skænktid = 13000;
int starttid;
boolean timerStarted = false;  // Variabel til at tjekke, om timeren er startet

void disBarSkaenker() {
BarSkænker = loadImage("BarSkænker.png");  // Indlæs billedet af BarSkænker i setup
 image(BarSkænker, 0, 0);  // Viser BarSkænker-billedet

  if (!timerStarted) {  // Start timeren kun én gang
    starttid = millis();  // Gem starttiden
    timerStarted = true;
  }

  // Tjekker om der er gået 5 sekunder (5000 ms)
  if (millis() - starttid >= skænktid) {
    visSkænkFærdig = true;  // Skift til næste side
    visBarSkænker = false;  // Skjul BarSkænker
    timerStarted = false;  // Nulstil timeren for fremtidige skænkninger, hvis nødvendigt
  }
}

boolean connected = true;
String prefix = "http://";
String ip = "10.194.220.128";
String suffix = "/STRING?DRINK=1";
String spacer = "&";

void drive(String pumpNums, String durationNums) {
  if (connected) {
    String pumps[] = split(pumpNums, '-');
    String durations[] = split(durationNums, '-');
    String request = prefix+ip+suffix;
    for (int i=0;i<pumps.length;i++) {
      request = request+spacer+"M"+pumps[i]+"="+durations[i];
    }
    println(request);

    String[] lines = loadStrings(request);
  } else {
    println("Not connected");
  }
}
