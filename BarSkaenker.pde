PImage BarSkænker;

int skænktid = 5000;
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
