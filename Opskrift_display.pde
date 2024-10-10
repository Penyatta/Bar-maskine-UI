String[] setupIngrediensTextFelter= new String[5];
String[] setupMaengderTextFelter= new String[5];
String[] setupAndreIngredienserTextFelter= new String[5];
String[] setupFremgangsmaadeTextFelter= new String[5];

void setupOpskrift() {
  PFont font = createFont("arial", 20);
  color textFeltBaggrund=color(255,200,200);
  color textFarve=color(0);
  int textFeltSizeX=100;
  int textFeltSizeY=20;
  for (int i=0; i<5; i++) {
    setupIngrediensTextFelter[i]="ing"+i;
    setupMaengderTextFelter[i]="maeng"+i;
    setupAndreIngredienserTextFelter[i]="aning"+i;
    setupFremgangsmaadeTextFelter[i]="frem"+i;
    lavTextFelt(10,10,textFeltSizeX,textFeltSizeY,textFeltBaggrund,textFarve,font,setupIngrediensTextFelter[i]);
    lavTextFelt(10,10,textFeltSizeX,textFeltSizeY,textFeltBaggrund,textFarve,font,setupMaengderTextFelter[i]);
    lavTextFelt(10,10,textFeltSizeX,textFeltSizeY,textFeltBaggrund,textFarve,font,setupAndreIngredienserTextFelter[i]);
    lavTextFelt(10,10,textFeltSizeX,textFeltSizeY,textFeltBaggrund,textFarve,font,setupFremgangsmaadeTextFelter[i]);
  }
}

void disOpskrift() {
}
