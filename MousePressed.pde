
void mousePressed() {
  if (visDrikkevare) {
  } else if (visOpskrifter) {
  } else if (visSkænk) {
  } else if (visRens) {
  } else {

    if (mouseX > 83 && mouseX < 480 && mouseY > 294 && mouseY < 484) {

      visDrikkevare=true;
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
    }
  } else {
    // Hvis vi er på startsiden, og brugeren klikker på en af mulighederne
    if (mouseX > 83 && mouseX < 480 && mouseY > 294 && mouseY < 484) {
      visDrikkevare = true;
    }
    if (mouseX > 530 && mouseX < 936 && mouseY > 294 && mouseY < 484) {
      visOpskrifter = true;
    }
    if (mouseX > 83 && mouseX < 83 + 410 && mouseY > 561 && mouseY < 561 + 190) {
      visRens = true;
    }
    if (mouseX > 530 && mouseX < 530 + 397 && mouseY > 561 && mouseY < 561 + 190) {
      visSkænk = true;
    }
  }
  
  if (visDrikkevare) {
    // Vis Drikkevare-side
  } else if (visOpskrifter) {
    // Vis Opskrifter-side
    
  } else if (visSkænk) {
    // Vis Skænk-side

  } else if (visRens) {
    // Vis Rens-side
   
  } else {
    // Vis startside
   
  }



}
