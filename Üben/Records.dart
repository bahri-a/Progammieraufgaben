void main(List<String> args) {
  //RECORDS

  //unbenannt
  (int, int) endstand = (2, 5);
  print(endstand.$1);
  print(endstand.$2);

  //benannt
  var minmax = (min: 4, max: 12);
  print(minmax.min);
  print(minmax.max);

  //als Rückgabewert aus Funktion
  print(getMinMax([13, 20, 5, 2, 27, 80]));
}

(int, int) getMinMax(List<int> zahlen) {
  int min = zahlen.reduce((a, b) => a < b ? a : b);
  int max = zahlen.reduce((a, b) => a > b ? a : b);
  return (min, max);
}
