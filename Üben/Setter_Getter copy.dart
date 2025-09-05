class Rectangle {
  int _a;
  int _b;

  // Problem: Named Paramter dürfen nicht mit _ anfangen. Deshalb:
  Rectangle({required int a, required int b}) : _a = a, _b = b;
  // Mit normalen posiitonal Constructor haben wir das Problem nicht.

  // Setter-Funktion erstellen. Private Variable _a soll nur gerade Werte annehmen dürfen.
  set potential_a(int zahl) {
    zahl % 2 == 0 ? _a = zahl : ();
    zahl % 2 == 0 ? print("Erfolgreich durchgeführt: $zahl") : print("Nicht erfolgreich: $zahl");
  }

  // Private Variable _b soll hingegen nur ungerade Werte annehmen dürfen.
  set potential_b(int zahl) {
    zahl % 2 != 0 ? _b = zahl : ();
    zahl % 2 != 0 ? print("Erfolgreich durchgeführt: $zahl") : print("Nicht erfolgreich: $zahl");
  }
}

void main(List<String> args) {
  Rectangle kleinerRechteck = Rectangle(a: 2, b: 3);

  kleinerRechteck.potential_a = 3;
  kleinerRechteck.potential_a = 4;
  kleinerRechteck.potential_b = 10;
  kleinerRechteck.potential_b = 7;
}
