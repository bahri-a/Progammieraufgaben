import "dart:io";
import "dart:math";

Map<int, String> toDoList = {};

// Befehl wird extrahiert als String
String befehlExtrahieren(String? eingabe) {
  eingabe = eingabe?.trim(); //Entfernt alle Leerzeichen vorne und hinten.
  List<String>? splittedEingabe = eingabe?.split(" ");
  String befehl = splittedEingabe![0];
  return befehl;
}

// toDo-Aufgabe wird extrahiert als String
String aufgabeExtrahieren(String? eingabe) {
  eingabe = eingabe?.trim(); //Entfernt alle Leerzeichen vorne und hinten.
  List<String>? splittedEingabe = eingabe?.split(" ");
  splittedEingabe?.remove(splittedEingabe[0]);
  String toDo = splittedEingabe!.join(" ").toString();
  return toDo;
}

// Zur Liste hinzufügen
void addToList(String eingabe) {
  String neueAufgabe = aufgabeExtrahieren(eingabe);
  int newKey = 0;
  if (toDoList.isEmpty) {
    newKey = 1;
  } else {
    int max = 0;
    for (int key in toDoList.keys) {
      key > max ? max = key : ();
    }
    newKey = max + 1;
  }

  toDoList[newKey] = neueAufgabe;
  print("\nAufgabe hinzugefügt: $neueAufgabe\n");
}

// Befehl: To-Do-Liste anzeigen
void anzeigen(Map<int, String> toDoList) {
  print("\nUnsere To-Do-Liste:\n");
  if (toDoList.isEmpty)
    print("Die Liste ist leer");
  else {
    for (var eintrag in toDoList.entries) {
      print("${eintrag.key}. ${eintrag.value}");
    }
  }
  print("\n");
}

// Befehl: Aufgaben als erledigt markieren
void erledigtMarkieren(int nr) {
  toDoList[nr] = toDoList[nr]!.replaceFirst("[ ]", "[x]");
  print("Abgehakt: ${toDoList[nr]}\n");
}

int doneZahlExtrahieren(String eingabe) {
  List<String> done = eingabe.split(" ");
  done.remove("done");
  int? zahl = int.tryParse(done[0]);
  return zahl!;
}

void delete(String eingabe) {
  int? zahl = int.tryParse(eingabe);
  print("\nDeleted: ${toDoList[zahl]}\n");
  toDoList.remove(zahl);
}

void main() {
  print(
    "\nHerzlich Willkommen!\n\nMöglichkeiten:\n\nadd 'Aufgabe' \t--> Um eine Aufgabe zu erstellen\nlist \t\t--> Um die To-Do-Liste anzuzeigen\ndone 'Nummer' \t--> Um eine Aufgabe als erledigt zu markieren\nexit \t\t--> Um das Programm zu beenden\n\n",
  );

  while (1 < 5) {
    stdout.write("Eingabe: ");
    String? eingabe = stdin.readLineSync();
    String? befehl = befehlExtrahieren(eingabe);
    String? toDo = aufgabeExtrahieren(eingabe);

    if (befehl == "add") {
      addToList(eingabe!);
    } else if (befehl == "done") {
      int nr = doneZahlExtrahieren(eingabe!);
      erledigtMarkieren(nr);
    } else if (befehl == "list") {
      anzeigen(toDoList);
    } else if (befehl == "delete") {
      delete(toDo);
    } else if (befehl == "exit") {
      print("\nTschüss!\n");
      exit(0);
    }
  }
}
