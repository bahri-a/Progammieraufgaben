/*
Du verwendest extends und implements in unterschiedlichen Szenarien, je nachdem, was du erreichen möchtest: 
Code wiederverwenden (extends) 
oder 
einheitliche Schnittstellen schaffen (implements).

Hier ist eine einfache Eselsbrücke:

extends = Erben: "Mein Auto ist ein Fahrzeug." Ich will alles, was ein Fahrzeug hat, und füge vielleicht noch etwas hinzu.

implements = Fähigkeiten versprechen: "Mein Auto kann fahren." Ich verspreche, dass mein Auto eine fahren()-Methode hat, aber wie es das tut, ist meine Sache.
*/

abstract class Fahrzeug {
  void fahren();
  void bremsen();
  void parken();
}
// Alle implementierenden Klassen müssen diese Methoden verwenden.

class Fahrrad implements Fahrzeug {
  void fahren() {}
  void bremsen() {}
  void parken() {}
}

class Auto implements Fahrzeug {
  void fahren() {}
  void bremsen() {}
  void parken() {}
}

/*
Extends - Erben
*/

abstract class Produkt {
  String? farbe;
  String? name;
  String? material;
  int? anzahl;

  Produkt({this.farbe, this.material, this.anzahl, this.name});

  void verkaufen() {
    print("$name wurde $anzahl mal verkauft.");
  }
}

class Milch extends Produkt {
  Milch({super.anzahl, super.name});

  @override
  void verkaufen() {
    super.verkaufen();
  }
}

void main(List<String> args) {
  Milch milch = Milch(anzahl: 5, name: "Milch");
  print(milch.anzahl);
  milch.verkaufen();
}
