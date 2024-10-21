
int aktivRedigerKnap = -1;  // -1 betyder ingen redigeringsknap er aktiv
//boolean visRediger = false;

void mousePressed() {
  if (visDrikkevare) {
    // Ingen handling her, hvis vi er på drikkevare-siden
  } else if (visOpskrifter) {
    
    // Check om musen er over redigeringsknap 1
    if ((mouseX > 305 && mouseX < 305 + 150) && (mouseY > 375 - scrollY && mouseY < 375 + 50 - scrollY)) {
      aktivRedigerKnap = 1;  // Knap 1 blev trykket
      visRediger = true;      // Skifter til redigeringstilstanden
      visOpskrifter = false;  // Lukker opskrifter visningen
    }

    // Check om musen er over redigeringsknap 2
    if ((mouseX > 305 && mouseX < 305 + 150) && (mouseY > 450+250 - scrollY && mouseY < 450+250 + 50 - scrollY)) {
      aktivRedigerKnap = 2;  // Knap 2 blev trykket
      visRediger = true;
      visOpskrifter = false;
    }

    // Du kan fortsætte med flere knapper her...

  } else if (visSkænk) {
    // Skænk logik
  } else if (visRens) {
    // Rens logik
  } else if (visBarSkænker) {
    // BarSkænker logik
  } else if (visRediger) {
    // Håndtering af redigeringstilstand
    if (aktivRedigerKnap == 1) {
      // Handling for redigeringsknap 1
      println("Redigerer via knap 1");
    } else if (aktivRedigerKnap == 2) {
      // Handling for redigeringsknap 2
      println("Redigerer via knap 2");
    }
    // Flere knapper kan håndteres her...

  } else {
    // Hovedmenu - hvor man kan vælge drikkevare, opskrifter, rens og skænk
    if (mouseX > 83 && mouseX < 480 && mouseY > 294 && mouseY < 484) {
      visDrikkevare = true;
      
      // Viser drikkevare tekstfelterne
      for (int i = 0; i < 9; i++) {
        cp5.get(Textfield.class, Flasker[i]).show();
      }
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

  // Tilbage-knappen - lukker den relevante redigeringsvisning
  if (visDrikkevare || visOpskrifter || visSkænk || visRens || visRediger) {
    if (mouseX > 0 && mouseX < 110 && mouseY > 0 && mouseY < 60) {
      // Nulstil alt og gå tilbage til hovedmenuen
      visDrikkevare = false;
      visOpskrifter = false;
      visSkænk = false;
      visRens = false;
      visBarSkænker = false;
      visRediger = false;
      aktivRedigerKnap = -1;  // Ingen redigeringsknap aktiv

      // Skjul drikkevare tekstfelterne
      for (int i = 0; i < 9; i++) {
        cp5.get(Textfield.class, Flasker[i]).hide();
      }
    }
  }
}
