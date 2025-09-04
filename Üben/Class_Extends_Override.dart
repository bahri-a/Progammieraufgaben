class Lebewesen {
  String? name;

  Lebewesen(this.name);

  // Methode in der Eltern-Klasse
  void move() {
    print("Ich gehe.");
  }
}

class Fisch extends Lebewesen {
  String? meer;
  String? fischart;

  // Zugriff auf Eltern-Variable mit "super."
  Fisch(super.name, this.meer, this.fischart);

  // Methode der Elternklasse wird überschrieben die die Kinds-Klasse Fisch.
  @override
  void move() {
    print("Ich schwimme.");
  }
}

void main(List<String> args) {
  Fisch fisch1 = Fisch("fischy", "Schwarzes Meer", "Hamsi");
  fisch1.move();
}
