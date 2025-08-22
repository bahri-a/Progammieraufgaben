void main(List<String> args) {
  List<String> products = ['Messer', 'Teller', 'Glas'];

  for (String p in products) {
    print(p);
  }

  Map<String, int> buecher = {'a': 10, 'b': 10, 'c': 10};

  int GesamtSeiten = 0;

  for (int s in buecher.values) {
    GesamtSeiten += s;
  }

  print("Gesamtzahl der Seiten: $GesamtSeiten");
}
