void main() {
  // Funktion die jede gerade Zahl aus einer Liste zurückgibt
  List<int> test = [12, 43, 52, 77, 58, 2, 10];
  var result = evenOrNot(test);
  print("Total list: $test");
  print("Even Numbers: ${result['even']}");
  print("Uneven Numbers: ${result['notEven']}");
}

dynamic evenOrNot(List<int> checkList) {
  List<int> evenList = [];
  List<int> notEvenList = [];

  for (int i = 0; i < checkList.length; i++) {
    checkList[i] % 2 == 0 ? evenList.add(checkList[i]) : notEvenList.add(checkList[i]);
  }
  return {'even': evenList, 'notEven': notEvenList};
}
