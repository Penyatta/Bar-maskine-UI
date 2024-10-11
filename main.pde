PImage img;
  PFont fontt;


void setup(){
  PFont font = createFont("arial",20);
  fontt=loadFont("BellMTBold-30.vlw");

  cp5 = new ControlP5(this);
  
  
for (int i=0;i<9;i++){
  Flasker[i]="Drik"+i;
}
  int y = 250;
  int x = 200;
  int Yspacing = 190;
  int Xspacing =450;
  
  for(int i=0;i<9;i++){
    flaskerText[i]=cp5.addTextfield(Flasker[i])
       .setPosition(x,y)
       .setSize(255,75)
       .setFont(fontt)
       .setColor(#420002)
       .setColorBackground(color(255,211,211))
       .setAutoClear(false)
       .align(120,130,120,130)
       ;
       flaskerText[i].setCaptionLabel("");
       flaskerText[i].hide();
    
     
     x += Xspacing;
     if(x==(200+Xspacing*3)){ 
      x=200;
      y+=Yspacing;
     }
  }
  

  textFont(font);
 size(1440,900);
 Opskrift Mojito =new Opskrift("Mojito");
 opskrifter.add(Mojito);
 Mojito.tilIng("Lime sodavand",75);
 Mojito.tilIng("Hvid Rom",75);
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

void draw(){
  image(img, 0, 0);
 if(visDrikkevare){
    disDrikkevare();
  }
 else if(visOpskrifter){
   disOpskrift();
 }
 else if(visSkænk){
   disSkaenk();
 }
 
 else if(visRens){
   disRens();
 }
 else{
  disHomepage();
 }
}
