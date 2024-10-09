String[] setupIngrediensTextFelter= new String[5];
String[] setupmaengderTextFelter= new String[5];
String[] setupandreIngredienserTextFelter= new String[5];
String[] setupfremgangsmaadeTextFelter= new String[5];
controlP5.Textfield[] IngrediensTextFelter= new controlP5.Textfield[5];
controlP5.Textfield[] maengderTextFelter= new controlP5.Textfield[5];
controlP5.Textfield[] andreIngredienserTextFelter= new controlP5.Textfield[5];
controlP5.Textfield[] fremgangsmaadeTextFelter= new controlP5.Textfield[5];

void lavTextFelt(int x, int y, int sizeX, int sizeY, color feltFarve, color textFarve, controlP5.Textfield feltNavn,PFont font,String tom){
  feltNavn=cp5.addTextfield(tom)
  .setPosition(x, y)
  .setSize(sizeX, sizeY)
  .setFont(font)
  .setColor(color(0, 0, 0))
  .setColorBackground(feltFarve)
  .setColorForeground(textFarve);
;
feltNavn.setCaptionLabel("");
feltNavn.hide();
}
void setupOpskrift() {
  PFont font = createFont("arial", 20);
  for (int i=0; i<5; i++) {
    setupIngrediensTextFelter[i]="ing"+i;
    setupmaengderTextFelter[i]="maeng"+i;
    setupandreIngredienserTextFelter[i]="aning"+i;
    setupfremgangsmaadeTextFelter[i]="frem"+i;
  }
}

void disOpskrift() {
}
