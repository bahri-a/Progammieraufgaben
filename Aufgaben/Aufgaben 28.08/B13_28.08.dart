
List<String> zeichenketten = ["abc", "123456", "123456789"];

Map berechnungWortlaenge(List abc) {
  Map<String, int> ergebnis = {};
  for (String wort in zeichenketten) {
    int wortlaenge = wort.length;
    ergebnis[wort] = wort.length;
  }
  return ergebnis;
}

void main(List<String> args) {
  print(berechnungWortlaenge(zeichenketten));
}
