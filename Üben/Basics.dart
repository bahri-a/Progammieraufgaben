void main(List<String> args) {
  List<String> Sprachen = ['Deutsch', 'Englisch', 'Arabisch', 'Türkisch'];

  List<int> Zahlen = [1, 2, 5, 10];

  List<int> leereListe = []; // leere Liste

  print(Sprachen);
  print(Sprachen[2]); // Position wählt die ganze Variable innerhalb der Liste
  print(Sprachen[2][0]); // Gibt den ersten Buchstaben der dritten Sprache an
  print(Sprachen.first);
  print(Sprachen.last);

  // Abfrage, ob die Liste Arabisch beinhaltet
  bool c = Sprachen.contains('Arabisch');
  print(c);

  Sprachen.add("Russisch");
  Sprachen.remove(Sprachen[0]);

  print(Sprachen);
  print(Sprachen.length);

  // Map beinhaltet zwei Werte. In dem Fall String und int.
  Map<String, int> Teilnehmer = {"Tarik": 5, "Bahri": 11, "dingdong": 7};

  print(Teilnehmer);
  print(Teilnehmer["Tarik"]); // Printed die Nummer von Tarik

  Teilnehmer["Tarik"] = 7; // Ändert die Nummer von Tarik
  print(Teilnehmer["Tarik"]);

  // Neue Map mit den Zahlen vorne
  Map<int, String> Teilnehmer2 = {5: "Tarik", 11: "Bahri"};

  print(Teilnehmer2[11]);

  Teilnehmer.remove("Tarik");
  print(Teilnehmer);

  print(Sprachen.runtimeType);

  // Bei List benutzt man in den eckigen Klammern den Index:    print(unsereListe[0]);
  // Bei Map benutzt man in den eckigen Klammern das Key:       print(unsereMap[1]);
}
