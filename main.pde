void setup(){
  PFont font = createFont("arial",20);

  cp5 = new ControlP5(this);
  
  
//for (int i=0;i<9;i++){
//  Flasker[i]="Drik"+i;
//}
//  int y = 20;
//  int x = 20;
//  int Yspacing = 60;
//  int Xspacing =120;
//  for(int i=0;i<9;i++){
//    flaskerText[i]=cp5.addTextfield(Flasker[i])
//       .setPosition(x,y)
//       .setSize(100,40)
//       .setFont(font)
//       .setColor(color(0,0,0))
//       .setColorBackground(color(255,211,211))
//       .setColorForeground(0);
//       ;
//       flaskerText[i].setCaptionLabel("");
//       flaskerText[i].hide();
//     x += Xspacing;
//     if(x==(20+Xspacing*3)){ 
//      x=20;
//      y+=Yspacing;
//     }
//  }
  

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
 
}

void draw(){
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
