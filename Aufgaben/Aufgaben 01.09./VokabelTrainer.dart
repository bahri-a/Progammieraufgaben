import "dart:io";

const String greenColor = '\x1B[32m';
const String redColor = '\x1B[31m';
const String resetColor = '\x1B[0m';

Map<String, String> vokabelListe = {};

void anleitung() {
  print("\nNext Steps:\n");
  print("1. Neue Vokabel hinzufügen");
  print("2. Vokabeln abfragen");
  print("3. Beenden\n");
}

void addVokabel(String vokabel, String uebers) {
  vokabelListe[vokabel] = uebers;
  print("\n${greenColor}·········Vokabel erfolgreich hinzugefügt·········$resetColor");
}

int eingabeToInt(String eingabe) {
  int auswahl = int.tryParse(eingabe) ?? 0;
  return auswahl;
}

void prozessVokabelEingabe() {
  String? vokabel;
  String? uebers;

  do {
    stdout.write("Vokabel: ");
    vokabel = stdin.readLineSync();
    vokabel == null ? print("Fehler: Ungültige Eingabe. Bitte geben Sie etwas ein.") : ();
  } while (vokabel == null);

  do {
    stdout.write("Übersetzung: ");
    uebers = stdin.readLineSync();
    uebers == null ? print("Fehler: Ungültige Eingabe. Bitte geben Sie etwas ein.") : ();
  } while (uebers == null);

  addVokabel(vokabel, uebers);
}

List vokabelnAbfragen() {
  int counter_correct = 0;
  int counter_wrong = 0;

  for (String vokabel in vokabelListe.keys) {
    stdout.write("$vokabel = ");
    String? versuch = stdin.readLineSync();
    if (versuch == vokabelListe[vokabel]) {
      print("${greenColor}Sehr gut!${resetColor}\n");
      counter_correct++;
    } else {
      print("${redColor}Leider falsch!${resetColor}\n");
      counter_wrong++;
    }
  }

  List<int> counter = [counter_correct, counter_wrong];
  return counter;
}

/* -------------------------------------------------- 
----------------------------------------------------- 
----------------------------------------------------- 
----------------------------------------------------- 
----------------------------------------------------- */

void main() {
  const String greenColor = '\x1B[32m';
  bool exit = false;

  do {
    anleitung();
    stdout.write("Eingabe: ");
    String eingabe = stdin.readLineSync() ?? "0";
    int zahl = eingabeToInt(eingabe);
    switch (zahl) {
      case 1:
        print("${greenColor}Ausgewählt: Neue Vokabel hinzufügen${resetColor}\n");
        prozessVokabelEingabe();
      case 2:
        print("${greenColor}Ausgewählt: Vokabeln abfragen${resetColor}\n");
        List counter = vokabelnAbfragen();
        int win = counter[0];
        int lose = counter[1];
        int gesamt = win + lose;
        print("Insgesamt abgefragte Vokabeln: ${gesamt}");
        print("${greenColor}Richtige Antworten: ${win}${resetColor}");
        print("${redColor}Falsche Antworten: ${lose}${resetColor}");
        win != 0 ? print("${greenColor}Richtig-Quote in %: ${win / gesamt * 100}${resetColor}") : print("${greenColor}Richtig-Quote in %: 0%${resetColor}");
        lose != 0 ? print("${redColor}Falsch-Quote in %: ${lose / gesamt * 100}${resetColor}") : print("${redColor}Falsch-Quote in %: 0%${resetColor}");
      case 3:
        print("${greenColor}Ausgewählt: Beenden${resetColor}\n");
        print("${greenColor}Programm ist beendet.${resetColor}");
        print("${greenColor}Wir wünschen Ihnen einen schönen Tag!${resetColor}");
        exit = true;
      default:
        print("${redColor}Ungültige Eingabe${resetColor}");
    }
  } while (exit == false);
}
