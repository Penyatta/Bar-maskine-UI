
PImage Skænk;

void disSkaenk() {
  Skænk = loadImage("Skænk.png");
  image(Skænk, 0, 0);

   maxScroll = Skænk.height+50 - viewportHeight;  // Maksimal scroll er billedets højde minus vinduets højde
  
 // Beregn scrollbarens højde baseret på forholdet mellem vinduets højde og billedets højde
  
  scrollbarHeight = int(viewportHeight * (viewportHeight / float(Skænk.height)));
   
  // Begræns scrollY, så vi ikke kan scrolle forbi toppen eller bunden af billedet
  scrollY = constrain(scrollY, 0, maxScroll);
  
  // Tegn billedet forskudt med scrollY
  image(Skænk, 0, -scrollY);
  
   // Tegn scrollbar
  drawScrollbar2();
}

// Funktion til at tegne scrollbar
void drawScrollbar2() {
  
  // Beregn scrollbarens position baseret på scrollY
  float scrollbarY = map(scrollY, 0, maxScroll, 0, 665);
  
  // map((value, start1, stop1, start2, stop2)  
  
  // Tegn den aktuelle scrollbar (den bevægende streg)
  fill(#EBBF5E);
  noStroke();
  rect(1409, scrollbarY+115, 16, 64, 10);
}
