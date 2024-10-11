//PImage drikkevarerside;

String[] Flasker=new String[9];
controlP5.Textfield[] flaskerText=new controlP5.Textfield[9];

void disDrikkevare() {
  for (int i=0; i<3; i++) {
    for (int t=0; t<3; t++) {
      flaskerText[i*3+t].show();
      
 // drikkevarerside = loadImage("Drikkevarer.png");
//  image(drikkevarerside, 0, 0);
    }
  }
}
