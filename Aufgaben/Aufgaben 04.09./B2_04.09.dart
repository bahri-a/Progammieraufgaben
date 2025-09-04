import "dart:io";

class Grocery {
  String? name;
  String? hersteller;
  double? gewicht;
  double? preis;

  Grocery(this.name, this.hersteller, this.gewicht, this.preis);

  void kuehlschrank() {
    print("Muss in den Kühlschrank!");
  }
}

class Milch extends Grocery {
  Milch(super.name, super.hersteller, super.gewicht, super.preis);

  @override
  void kuehlschrank() {
    print("$name muss zu Hause sofort in den Kühlschrank!");
  }
}

class Lindt_Schokolade extends Grocery {
  Lindt_Schokolade(super.name, super.hersteller, super.gewicht, super.preis);

  @override
  void kuehlschrank() {
    print("$name muss nicht in den Kühlschrank.");
  }
}

void main(List<String> args) {
  Milch milch1 = Milch("Frische Vollmilch", "Bärenmarke", 1, 0.5);
  Lindt_Schokolade vollmilch = Lindt_Schokolade("Vollmilchschokolade", "Lindt", 250, 2.99);

  milch1.kuehlschrank();
  vollmilch.kuehlschrank();
}
