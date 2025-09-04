class Tool {
  String? typ;
  String? marke;

  Tool(this.typ, this.marke);
}

class Vorschlaghammer extends Tool {
  String? farbe;
  int? haertegrad;

  Vorschlaghammer(super.typ, super.marke, this.farbe, this.haertegrad);

  void haertePrint(String haertegrad) {
    print("Härtegrad ist: $haertegrad");
  }
}

class Saege extends Tool {
  String? farbe;
  int? anzahlZacken;

  Saege(super.typ, super.marke, this.farbe, this.anzahlZacken);

  void zackenPrint(String anzahlZacken) {
    print("Anzahl der Zacken: $anzahlZacken");
  }
}

void main(List<String> args) {
  Vorschlaghammer hammer1 = Vorschlaghammer("Vorschlaghammer", "Stanley", "Pink", 5);
  Saege saege1 = Saege("Säge", "Makita", "Lila", 8);

  print(hammer1.typ);
  print(saege1.marke);
}
