
void mousePressed() {
  if (visDrikkevare) {
  } else if (visOpskrifter) {
  
    if ((mouseX > 305 && mouseX <305+150 ) && (mouseY > 375-scrollY && mouseY <375+50-scrollY)) {
      visRediger=true;
      visOpskrifter=false;
    }
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
}
