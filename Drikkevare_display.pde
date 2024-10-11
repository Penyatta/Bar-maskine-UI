PImage drikkevarerside;

String[] Flasker=new String[9];



void disDrikkevare() {
  for (int i=0; i<9; i++) {
   
      
      cp5.get(Textfield.class,Flasker[i]).show();
 drikkevarerside = loadImage("Drikkevarer.png");
image(drikkevarerside, 0, 0);
  
 }
}
  
  
