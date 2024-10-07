void setup(){
  PFont font = createFont("arial",20);

  cp5 = new ControlP5(this);
  
  int y = 20;
  int x = 20;
  int Yspacing = 60;
  int Xspacing =120;
  for(int i=0;i<9;i++){
  cp5.addTextfield("")
     .setPosition(x,y)
     .setSize(200,40)
     .setFont(createFont("arial",20))
     .setAutoClear(false)
     ;
     x += Xspacing;
     if(x==(20+Xspacing*3)){
      x=20;
      y+=Yspacing;
     }
  }
/*
  int y = 20;
  int x = 20;
  int Yspacing = 60;
  int Xspacing =120;
  for(String name: flasker){
    cp5.addTextfield(name)
       .setPosition(x,y)
       .setSize(100,40)
       .setFont(font)
       .setFocus(true)
       .setColor(color(255,0,0))
       ;
     x += Xspacing;
     if(x==(20+Xspacing*3)){
      x=20;
      y+=Yspacing;
     }
  }
  */

  textFont(font);
 size(1366,768);
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
