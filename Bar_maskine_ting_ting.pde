import controlP5.*;

ControlP5 cp5;
class Opskrift {
  String navn;
  String beskrivelse;
  ArrayList<String> Ingredienser = new ArrayList<String>();
  ArrayList<Integer> maengder = new ArrayList<Integer>();
  ArrayList<String> extraIngredienser =new ArrayList<String>();
  ArrayList<String> Fremgangsmaade = new ArrayList<String>();
  Opskrift(String tempNavn) {
    navn=tempNavn;
  }
  void tilIng(String ingrediens, int maengde) {
    Ingredienser.add(ingrediens);
    maengder.add(maengde);
  }
  void tilBesk(String tempBeskrivelse) {
    beskrivelse=tempBeskrivelse;
  }
  void tilExIng(String extraIngrediens) {
    extraIngredienser.add(extraIngrediens);
  }
  void tilFrem(String fremgangsmaade) {
    Fremgangsmaade.add(fremgangsmaade);
  }
}


ArrayList<Opskrift> opskrifter = new ArrayList<Opskrift>();
boolean visOpskrifter=false;
boolean visSkænk=false;
boolean visRens=false;
boolean visDrikkevare=false;
Boolean visBarSkænker=false;

//Hvis man trykker enter når man er i et textfelt aktiverer denne
void controlEvent(ControlEvent theEvent) {
  if (theEvent.isAssignableFrom(Textfield.class)) {
    println("controlEvent: accessing a string from controller '"
      +theEvent.getName()+"': "
      +theEvent.getStringValue()
      );
    for (int i=0; i<9; i++) {
      //Hvis det er en Drikkevare textfelt går den her ind
      if (theEvent.getName()=="Drik"+i) {
        flasker[i]=theEvent.getStringValue();
      }
    }
  }
}
