class Autor {
  String? name;
  int? geburtsjahr;

  Autor(this.name, this.geburtsjahr);
}

class Buch {
  String? titel;
  int? seitenzahl;
  Autor? autor;

  Buch(this.titel, this.seitenzahl, this.autor);
}

void main(List<String> args) {
  Autor waldmann = Autor('Peter Waldmann', 1972);
  Buch herrDerBaume = Buch("Der Herr der Bäume", 570, waldmann);

  print(herrDerBaume.titel);
  print(herrDerBaume.seitenzahl);
  print(herrDerBaume.autor!.name);
}
