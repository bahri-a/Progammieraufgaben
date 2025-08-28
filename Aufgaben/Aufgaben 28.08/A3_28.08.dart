int anzahlZeichen(String text) {
  print("Ergebnis für $text:");
  int anzahl = 0;

  for (int i = 0; i < text.length; i++) {
    String buchstabe = text[i];
    if (buchstabe == 'a' || buchstabe == 'e' || buchstabe == 'i' || buchstabe == 'o' || buchstabe == 'u') anzahl++;
  }
  return anzahl;
}

void main(List<String> args) {
  print(anzahlZeichen('Bahri'));
  print(anzahlZeichen('Janaaa'));
  print(anzahlZeichen('Bobou'));
}
