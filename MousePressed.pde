
void mousePressed() {
  if (visDrikkevare) {
  } else if (visOpskrifter) {
  } else if (visSkænk) {
    // Tjek om musen er inden for det definerede område (knappen)
    if (mouseX > 1190 && mouseX < 1190 + 199 && mouseY > 291-scrollY && mouseY < 291 + 85-scrollY) {
      // Hvis musen er inden for området, udfør handlingen
      visBarSkænker = true;  // Ændr tilstanden, eller udfør en handling
      visSkænk = false;    
      println("Knappen blev klikket!");  // Udskriv til konsollen for at teste
    }
  } else if (visRens) {
  } else if (visBarSkænker) {
  } else {

    if (mouseX > 83 && mouseX < 480 && mouseY > 294 && mouseY < 484) {
      visDrikkevare=true;
      
      //Viser drikkevare textfelterne
      for (int i=0; i<9; i++) {
      cp5.get(Textfield.class,Flasker[i]).show();
      }
    }
    if (mouseX > 530 && mouseX < 936 && mouseY > 294 && mouseY < 484) {
      visOpskrifter=true;
    }
    
    if (mouseX > 83 && mouseX < 83+410 && mouseY > 561 && mouseY < 561+190) {
      visRens=true;
    }
    if (mouseX > 530 && mouseX < 530+397 && mouseY > 561 && mouseY < 561+190) {
      visSkænk=true;
    }
  }

    if (visDrikkevare || visOpskrifter || visSkænk || visRens) {
      // Hvis vi er på en af undersiderne, og der trykkes på "tilbage"-knappen
      if (mouseX > 0 && mouseX < 110 && mouseY > 0 && mouseY < 60) {
        // Når brugeren klikker på "tilbage"-knappen, går vi tilbage til startsiden
        visDrikkevare = false;
        visOpskrifter = false;
        visSkænk = false;
        visRens = false;
        visBarSkænker = false;
      
    }
  }
}
