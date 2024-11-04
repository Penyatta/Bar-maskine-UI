

int mx1 = 1190;
int mx2 = 1190+199;
int my1 = 291;
int my2 = 291 + 85;

int aktivRedigerKnap = -1;  // -1 betyder ingen redigeringsknap er aktiv
//boolean visRediger = false;

void mousePressed() {
  if (visDrikkevare) {
    // Ingen handling her, hvis vi er på drikkevare-siden
  } else if (visOpskrifter) {

    if ((mouseX > 305 && mouseX <305+150 ) && (mouseY > 375-scrollY && mouseY <375+50-scrollY)) {
      visRediger=true;
      visOpskrifter=false;
    }
  } else if (visSkænk) {

    // Tjek om musen er inden for det definerede område (knappen)
    if (mouseX > 1190 && mouseX < 1190 + 199 && mouseY > 291-scrollY && mouseY < 291 + 85-scrollY) {           
      // Hvis musen er inden for området, udfør handlingen
      visBarSkænker = true;  // Ændr tilstanden, eller udfør en handling
      visSkænk = false;
      println("Knappen blev klikket!");  // Udskriv til konsollen for at teste
    }
    }

    
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

    // Jeg forsætter med knapperne her

  } else if (visRens) {
    // Tjek om musen er over "kom i gang knap"
   if((mouseX>105 && mouseX<105+300) && (mouseY>250 && mouseY<250+80)){
     visRensTrinEt=true;
     visRens=false;
     startTime = millis();  // Gem starttidspunktet
     println("noo");
   }
   
   //tjek om musen er over "kom i gang knap" nr. 2
   if((mouseX>105 && mouseX<105+300) && (mouseY>740 && mouseY<740+80)){
     visRensTrinTo=true;
     visRens=false;
     startTime = millis();  // Gem starttidspunktet
     println("noo");
   }
  } else if (visBarSkænker) {
  } else if (visSkænkFærdig) {
  }
  if (mouseX > 626 && mouseX < 626+534 && mouseY > 458 && mouseY < 458+82) {
    disHomepage();
    visOpskrifter=false;
    visSkænk=false;
    visRens=false;
    visDrikkevare=false;
    visRediger=false;
    visBarSkænker=false;
    visSkænkFærdig = false;
  } else {

    // BarSkænker logik
   
   } else if (visSkænkFærdig) {
  }
  if (mouseX > 626 && mouseX < 626+534 && mouseY > 458 && mouseY < 458+82) {
    disHomepage();
    visOpskrifter=false;
    visSkænk=false;
    visRens=false;
    visDrikkevare=false;
    visRediger=false;
    visBarSkænker=false;
    visSkænkFærdig = false;
    
  
    
  } else if (visRediger) {
    // Håndtering af redigeringstilstand
    if (aktivRedigerKnap == 1) {
      // Handling for redigeringsknap 1
      println("Redigerer via knap 1");
    } else if (aktivRedigerKnap == 2) {
      // Handling for redigeringsknap 2
      println("Redigerer via knap 2");
    }


  } else {
    // Hovedmenu - hvor man kan vælge drikkevare, opskrifter, rens og skænk
    if (mouseX > 83 && mouseX < 480 && mouseY > 294 && mouseY < 484) {

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

      //Viser drikkevare textfelterne
      for (int i=0; i<9; i++) {

      visRediger = false;
      aktivRedigerKnap = -1;  // Ingen redigeringsknap aktiv

      // Skjul drikkevare tekstfelterne
      for (int i = 0; i < 9; i++) {

        cp5.get(Textfield.class, Flasker[i]).hide();
      }
    }
  }
}
