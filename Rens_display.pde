PImage VæskeTilbage;
PImage rens;
PImage VæskeOptage;

float angle = 0;  // Startvinkel for rotation
float angleSpeed = 0.1;  // Hastighed for rotation
int circleSize = 50;  // Størrelsen på loading cirklen

int startTime;  // Tidspunkt hvor skærmen starter (i millisekunder)
int displayDuration = 5000;  // Varighed af visningen i millisekunder (her 5000 ms = 5 sekunder)

void disRens(){

  rens = loadImage("Rens.png");
  image(rens, 0, 0);

}

void disRensTrinEt(){
 VæskeTilbage=loadImage("RensVent.png");
  image(VæskeTilbage,0,0);
 
 // Tegn en loading cirkel
  pushMatrix();
  translate(870, 490);  // Flytter koordinatsystemet til midten af skærmen (eller andet sted)
  rotate(angle);  // Roterer omkring midtpunktet
  stroke(#9D7E37);  // Farven på loading cirklen
  strokeWeight(4);  // Tykkelsen på cirklen
  noFill();  // Ingen fyld i cirklen

  // Tegn en bue (et segment af cirklen)
  arc(0, 0, circleSize, circleSize, 0, PI);  // Tegn en halvcirkel (eller mindre) for at lave effekten

  popMatrix();

  // Opdater vinkel for næste frame
  angle += angleSpeed;
  
    // Tjek hvor lang tid der er gået
  if (millis() - startTime >= displayDuration) {
    visRensTrinEt = false;  // Slut med at vise rens trin et
    visRens = true;  // Skift tilbage til rens visning
  }
  
}

void disRensTrinTo(){
 VæskeOptage=loadImage("RensVent1.png");
  image(VæskeOptage,0,0);
 
 // Tegn en loading cirkel
  pushMatrix();
  translate(870, 490);  // Flytter koordinatsystemet til midten af skærmen (eller andet sted)
  rotate(angle);  // Roterer omkring midtpunktet
  stroke(#9D7E37);  // Farven på loading cirklen
  strokeWeight(4);  // Tykkelsen på cirklen
  noFill();  // Ingen fyld i cirklen

  // Tegn en bue (et segment af cirklen)
  arc(0, 0, circleSize, circleSize, 0, PI);  // Tegn en halvcirkel (eller mindre) for at lave effekten

  popMatrix();

  // Opdater vinkel for næste frame
  angle += angleSpeed;
  
    // Tjek hvor lang tid der er gået
  if (millis() - startTime >= displayDuration) {
    visRensTrinTo = false;  // Slut med at vise rens trin et
    visRens = true;  // Skift tilbage til rens visning
  }
  
}
