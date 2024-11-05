
PImage img;
PFont fontt;

void setup() {
  PFont font = createFont("arial", 20);
  fontt=loadFont("BellMTBold-30.vlw");

  cp5 = new ControlP5(this);



  //Giver navne til drikkevare textfelterne
  for (int i=0; i<9; i++) {
    Flasker[i]="Drik"+i;
    flasker[i]="";
  }
  //De forskellige ting til drikkevare textfelterne
  int y = 250;
  int x = 200;
  int Yspacing = 190;
  int Xspacing =450;
  int sizeX=255;
  int sizeY=75;
  color feltFarve=color(255, 211, 211);
  color Farven=color(#420002);

//Laver drikkevare textfelterne på de rigtige positioner
  for (int i=0; i<9; i++) {
    lavTextFelt(x, y, sizeX, sizeY, feltFarve, Farven, fontt, Flasker[i]);
    x += Xspacing;
    if (x==(200+Xspacing*3)) {
      x=200;
      y+=Yspacing;
    }
  }
  //Forbereder textfelterne til opskriften
  setupOpskrift();




  textFont(font);

  size(1440, 900);
  
  //Kommer mojito ind i programmet som vist i figma
  Opskrift Mojito =new Opskrift("Mojito");
  opskrifter.add(Mojito);
  Mojito.tilIng("Lime sodavand", 75);
  Mojito.tilIng("Hvid rom", 75);
  Mojito.tilBesk("Klassisk Mojito med lime og mynte");
  Mojito.tilExIng("Rørsukker");
  Mojito.tilExIng("Lime");
  Mojito.tilExIng("Mynte");
  Mojito.tilFrem("Fyld glas med isterninger");
  Mojito.tilFrem("Tilføj sukker, mynte, lime");
  Mojito.tilFrem("Sæt glas, og skænk");

  //load et billede
  img = loadImage("Flasker.png");
}

void draw() {
  image(img, 0, 0);
  
  //Sørger for at det er de rigtige funktioner der kører når det skal vises
  if (visDrikkevare) {
    disDrikkevare();
  } else if (visOpskrifter) {
    disOpskrift();
  } else if (visSkænk) {
    disSkaenk();
  } else if (visRens) {
    disRens();
     } else if (visRensTrinEt) {
    disRensTrinEt();
       } else if (visRensTrinTo) {
    disRensTrinTo();
    } else if(visBarSkænker){
   disBarSkaenker();
    } else if(visRediger){
   disRediger();
     } else if(visSkænkFærdig){
   disSkaenkFaerdig();
 } else {

    disHomepage();
    
  }
  if(visIkkeSkænk){
   if(StartTid1>(millis()- 5000)){
     rectMode(CENTER);
     fill(255);
     rect(width/2,height/2,300,300,20);
     rectMode(CORNER);
     fill(0);
     textSize(30);
     text("Der var ikke de",width/2-120,height/2-100);
     text("rigtige ingredienser",width/2-120,height/2-50);
      text("på flaskerne,",width/2-120,height/2);
      text("måske er de stavet",width/2-120,height/2+50);
      text("forkert.",width/2-120,height/2+100);
     textSize(12);
   }
  }
}



//Funktionen der tegner textfelterne
void lavTextFelt(int x, int y, int sizeX, int sizeY, color feltFarve, color Farven, PFont font, String tom) {
  cp5.addTextfield(tom)
    .setPosition(x, y)
    .setSize(sizeX, sizeY)
    .setFont(font)
    //Bestemmer farven af texten
    .setColor(Farven)
    //Bestemmer farven af selve textfeltet
    .setColorBackground(feltFarve)
    //Bestemmer farven af kanten rundt om textfeltet
    .setColorForeground(feltFarve)
    //Bestemmer farven af kanten rundt om textfeltet når det er trykket på
    .setColorActive(feltFarve)
    .setVisible(false)
    .setAutoClear(false)
    .setFocus(false)
    .align(120, 130, 120, 130)
    ;
  //Sætter titlen på textfelterne til at være tom
  cp5.get(Textfield.class, tom).setCaptionLabel("");

}
