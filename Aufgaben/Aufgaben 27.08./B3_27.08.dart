void findAndPrintExtreme(List<int> numbers) {
  int min = numbers[0];
  int max = numbers[0];
  for (int i = 0; i < numbers.length; i++) {
    numbers[i] < min
        ? min = numbers[i]
        : numbers[i] > max
        ? max = numbers[i]
        : ();
  }
  print("Kleinste Zahl: \t$min (index: ${numbers.indexOf(min)}) \nGrößte Zahl: \t$max (index: ${numbers.indexOf(max)})");
}

void printNumberTypes(List<int> numbers) {
  int anzahl_ungerade = 0;
  int anzahl_gerade = 0;
  int anzahl_positiv = 0;
  int anzahl_negativ = 0;

  for (int i = 0; i < numbers.length; i++) {
    (numbers[i] % 2 == 0) ? anzahl_gerade++ : anzahl_ungerade++;
    (numbers[i] >= 0) ? anzahl_positiv++ : anzahl_negativ++;
  }
  print("Anzahl gerade Zahlen: \t $anzahl_gerade");
  print("Anzahl ungerade Zahlen:  $anzahl_ungerade");
  print("Anzahl positive Zahlen:  $anzahl_positiv");
  print("Anzahl negative Zahlen:  $anzahl_negativ");
}

void analyzeNumbers(List<int> numbers) {
  findAndPrintExtreme(numbers);
  printNumberTypes(numbers);
}

void main(List<String> args) {
  List<int> numbers = [2, 6, -3, -7];
  analyzeNumbers(numbers);
}
