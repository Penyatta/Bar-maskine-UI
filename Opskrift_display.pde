PImage opskriftside; // Billedet, som vi vil scrolle
int scrollY = 0;  // Hvor meget vi har scrollet
int maxScroll;    // Maksimal scrollværdi
int viewportHeight = 900;  // Højden på "visningsområdet", altså skærmen vi viser på
int scrollbarWidth = 15;   // Bredden af scrollbar
int scrollbarHeight;     // Højden af scrollbar (dynamisk)
String[] IngrediensTextFelter= new String[5];
String[] MaengderTextFelter= new String[5];
String[] AndreIngredienserTextFelter= new String[5];
String[] FremgangsmaadeTextFelter= new String[5];

void setupOpskrift() {
  PFont font = createFont("arial", 20);
  color textFeltBaggrund=color(255,200,200);
  color textFarve=color(0);
  int textFeltSizeX=100;
  int textFeltSizeY=20;
  for (int i=0; i<5; i++) {
    IngrediensTextFelter[i]="ing"+i;
    MaengderTextFelter[i]="maeng"+i;
    AndreIngredienserTextFelter[i]="aning"+i;
    FremgangsmaadeTextFelter[i]="frem"+i;
    lavTextFelt(10,10,textFeltSizeX,textFeltSizeY,textFeltBaggrund,textFarve,font,IngrediensTextFelter[i]);
    lavTextFelt(10,10,textFeltSizeX,textFeltSizeY,textFeltBaggrund,textFarve,font,MaengderTextFelter[i]);
    lavTextFelt(10,10,textFeltSizeX,textFeltSizeY,textFeltBaggrund,textFarve,font,AndreIngredienserTextFelter[i]);
    lavTextFelt(10,10,textFeltSizeX,textFeltSizeY,textFeltBaggrund,textFarve,font,FremgangsmaadeTextFelter[i]);
  }
}

void disOpskrift() {

  // Indlæs billedet (du skal have et billede i samme mappe som Processing-sketchen)
  opskriftside = loadImage("Opskrifter.png");
  image(opskriftside, 0, 0);
  
  maxScroll = opskriftside.height+50 - viewportHeight;  // Maksimal scroll er billedets højde minus vinduets højde
  
 // Beregn scrollbarens højde baseret på forholdet mellem vinduets højde og billedets højde
  
  scrollbarHeight = int(viewportHeight * (viewportHeight / float(opskriftside.height)));
  
  // Begræns scrollY, så vi ikke kan scrolle forbi toppen eller bunden af billedet
  scrollY = constrain(scrollY, 0, maxScroll);
  
  // Tegn billedet forskudt med scrollY
  image(opskriftside, 0, -scrollY);
  
   // Tegn scrollbar
  drawScrollbar();
  
  rect(305,380,150,45);

}

// Funktion til at tegne scrollbar
void drawScrollbar() {
  
  // Beregn scrollbarens position baseret på scrollY
  float scrollbarY = map(scrollY, 0, maxScroll, 0, 665);
  
  // map((value, start1, stop1, start2, stop2)  
  
  // Tegn den aktuelle scrollbar (den bevægende streg)
  fill(#EBBF5E);
  rect(1409, scrollbarY+115, 16, 64, 10);
  
  // rect(x,y,højde, brede
}


// Brug musens hjul til at scrolle
void mouseWheel(MouseEvent event) {
  float e = event.getCount();
  scrollY += e * 20;  // Ændr scrollY afhængigt af, hvor meget der scroller
}
