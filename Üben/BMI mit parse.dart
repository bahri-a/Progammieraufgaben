import 'dart:io';

void main(List<String> args) {
  print("Größe in m: ");
  String? input = stdin.readLineSync() ?? '';
  double groesse = double.tryParse(input)!;

  print("");

  print("Gewicht in kg: ");
  String? input2 = stdin.readLineSync() ?? '';
  double gewicht = double.tryParse(input2)!;

  print("");

  print(groesse);
  print(gewicht);
}
