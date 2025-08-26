import 'dart:io';

double noten_addiert = 0;

void main(List<String> args) {
  Map<String, double> faecher = {'Mathe': 0, 'Deutsch': 0};

  for (String fach in faecher.keys) {
    print('Gebe eine Note für $fach ein: ');
    String eingabe = stdin.readLineSync() ?? "0";
    double note = double.tryParse(eingabe) ?? 0;

    faecher[fach] = note;
    noten_addiert += note;
  }

  double durchschnitt = noten_addiert / faecher.length;

  print(faecher);
  print(durchschnitt);
}
