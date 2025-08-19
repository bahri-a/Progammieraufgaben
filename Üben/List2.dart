void main() {
  //For- und if-Schleife einbauen in die Initialisierung der Liste.

  List<int> numbers = [
    for (int i = 0; i < 10; i++)
      if (i != 5) i,
  ];
  print(numbers);

  // Zeiger erstellen für die Liste.

  var it = numbers.iterator;

  it.moveNext();
  it.moveNext();
  it.moveNext();
  print(it.current);
}
