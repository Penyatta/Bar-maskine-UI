import controlP5.*;

ControlP5 cp5;
class Opskrift {
  String navn;
  String beskrivelse;
  ArrayList<String> Ingredienser = new ArrayList<String>();
  ArrayList<Integer> maengder = new ArrayList<Integer>();
  
  
  void tilNavn(String Navn){
   navn=Navn; 
  }
  void tilIng(String ingrediens, int maengde) {
    Ingredienser.add(ingrediens);
    maengder.add(maengde);
  }
  void tilBesk(String tempBeskrivelse) {
    beskrivelse=tempBeskrivelse;
  }
}

class Opskrifter {
  ArrayList<Opskrift> opskrifter = new ArrayList<Opskrift>();
  int tilOpskrift(){
   Opskrift opskrift =new Opskrift();
   opskrifter.add(opskrift);
   return opskrifter.size()-1;
  }
  void tilEksisOpskrift(Opskrift opskrift){
    opskrifter.add(opskrift);
  }
}

Opskrifter DemAlle =new Opskrifter();
boolean visOpskrifter=false;
boolean visSkænk=false;
boolean visRens=false;
boolean visDrikkevare=false;
boolean visRediger=false;
boolean visBarSkænker=false;
boolean visSkænkFærdig = false;

//Hvis man trykker enter når man er i et textfelt aktiverer denne
void controlEvent(ControlEvent theEvent) {
  if (theEvent.isAssignableFrom(Textfield.class)) {
    println("controlEvent: accessing a string from controller '"
      +theEvent.getName()+"': "
      +theEvent.getStringValue()
      );
    for (int i=0; i<9; i++) {
      //Hvis det er en Drikkevare textfelt går den her ind
      if (theEvent.getName().equals("Drik"+i)) {
        //Sætter det indtastede fra textfeltte ind som på string arrayet
        flasker[i]=theEvent.getStringValue();
      }
    }
  }
}
