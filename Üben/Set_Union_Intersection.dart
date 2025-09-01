void main(List<String> args) {
  Set<String> teilnehmer1 = {"Bahri", "Deniz", "Farhad"};
  Set<String> teilnehmer2 = {"Deniz", "Farhad", "Jan", "Davey"};

  // Union (verbindet ohne Duplikate)
  print("Union: ${teilnehmer1.union(teilnehmer2)}");

  // Intersection (Schnittmenge)
  print("Intersection: ${teilnehmer1.intersection(teilnehmer2)}");

  // Difference (zieht ab, wie Minusrechnung)
  print("Difference: ${teilnehmer1.difference(teilnehmer2)}");
}
