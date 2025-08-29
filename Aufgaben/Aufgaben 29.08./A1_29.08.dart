import "dart:io";

Map<int, String> toDoList = {1: "Hausaufgaben [ ]", 2: "Müll [ ]"};

// Befehl: Zur Liste hinzufügen
void add(String aufgabe) {
  int counter = 1;
  for (int i in toDoList.keys) {
    counter++;
  }
  toDoList[counter] = ("$aufgabe [ ]");
  print("Aufgabe hinzugefügt: $aufgabe");
}

// Befehl: To-Do-Liste anzeigen
void anzeigen(Map map) {
  print("\nUnsere To-Do-Liste:\n");
  for (int i = 1; i <= toDoList.length; i++) {
    print("$i. ${map[i]}");
  }
  print("\n");
}

// Befehl: Aufgaben markieren
void erledigt(int nr) {
  toDoList[nr] = toDoList[nr]!.replaceFirst("[ ]", "[x]");
  print("Abgehakt: ${toDoList[nr]}\n");
}

// Befehl: exit
void exit() {
  print("Tschüss!");
  exitCode;
}

// Verstehen der Eingabe des Users
void eingabeVerstehen(String? eingabe) {
  eingabe = eingabe?.trim(); //Entfernt alle Leerzeichen vorne und hinten.
  List<String>? splittedEingabe = eingabe?.split(" ");
  String befehl = splittedEingabe![0];
  splittedEingabe.remove("$befehl");
  String aufgabe = splittedEingabe.join(" ").toString();
  print(aufgabe);
}

void main(List<String> args) {
  print(
    "\nHerzlich Willkommen!\n\nMöglichkeiten:\n\nadd 'Aufgabe' \t--> Um eine Aufgabe zu erstellen\nlist \t\t--> Um die To-Do-Liste anzuzeigen\ndone 'Nummer' \t--> Um eine Aufgabe als erledigt zu markieren\nexit \t\t--> Um das Programm zu beenden\n\n",
  );

  stdout.write("Eingabe: ");
  String? eingabe = stdin.readLineSync();
  eingabeVerstehen(eingabe);
}




/* UM DIE MAP ENTRIES ZU EINER LISTE ZU MACHEN
 * 
 * void main() {
  Map<String, String> user = {
    'name': 'Max Mustermann',
    'stadt': 'Monheim am Rhein'
  };

  // FEHLER: user.entries ist ein Iterable und hat keinen Index [0].
  // print(user.entries[0]); 

  // LÖSUNG: Wandle das Iterable zuerst in eine Liste um.
  var entryList = user.entries.toList();

  // 'entryList' ist jetzt eine richtige Liste, die du per Index abfragen kannst.
  var firstEntry = entryList[0]; 
  
  print('Schlüssel des ersten Eintrags: ${firstEntry.key}');
  print('Wert des ersten Eintrags: ${firstEntry.value}');
}
 * 
 */