void main(List<String> args) {
  //Direkter Feldzugriff auf die Rückgabewerte
  print(userDetails().$1);
  print(userDetails().$2);
  print(userDetails().$3);

  //Destructuring (deutsch: Entpacken) der Rückgabewerte
  var (name, alter, stadt) = userDetails();
  print(name);
  print(alter);
  print(stadt);
}

(String, int, String) userDetails() {
  String name = 'Bahri Akcora';
  int alter = 29;
  String stadt = 'Monheim';

  return (name, alter, stadt);
}
