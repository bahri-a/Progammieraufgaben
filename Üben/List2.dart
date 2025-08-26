void main() {
  //For- und if-Schleife einbauen in die Initialisierung der Liste.

  List<int> numbers = [
    for (int i = 0; i < 10; i++)
      if (i != 5) i,
  ];
  print(numbers);

  // Zeiger erstellen für die Liste.

  var zeiger = numbers.iterator;

  zeiger.moveNext();
  zeiger.moveNext();
  zeiger.moveNext();
  print(zeiger.current);
}
