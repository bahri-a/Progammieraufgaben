import 'dart:io';

void main(List<String> args) {
  print("Gib eine Zahl ein: ");

  String input =
      stdin.readLineSync() ?? ''; // stdin.readLineSync ließt nur Strings ein.
  int zahl = int.parse(input);

  print(zahl);
}
