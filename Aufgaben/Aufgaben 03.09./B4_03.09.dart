class Rechteck {
  double x;
  double y;

  double umfang() {
    double ergebnis = 2 * x + 2 * y;
    return ergebnis;
  }

  double flaeche() {
    double ergebnis = this.x * this.y; // egal ob mit oder ohne "this."
    return ergebnis;
  }

  Rechteck(this.x, this.y);
}

void main(List<String> args) {
  double x = 2;
  double y = 4;
  Rechteck erstesRechteck = Rechteck(x, y);
  print(erstesRechteck.flaeche());
  print(erstesRechteck.umfang());

  erstesRechteck.x = 6; // Es reicht nicht aus, die Variable x zu ändern. Man muss es auf diese Weise tun.
  print(erstesRechteck.flaeche());
  print(erstesRechteck.umfang());
}
