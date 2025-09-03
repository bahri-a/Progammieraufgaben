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
  Rechteck erstesRechteck = Rechteck(2, 4);
  print(erstesRechteck.flaeche());
  print(erstesRechteck.umfang());
}
