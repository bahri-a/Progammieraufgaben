import "dart:io";

void sumCalc(int x, int y) {
  stdout.write("Berechnung $x + $y = ");
  print(x + y);
  printSatz();
}

int anzahl = 1;
int? printSatz() {
  print("$anzahl. Berechnung fertig");
  anzahl++;
}

void main(List<String> args) {
  sumCalc(2, 3);
  sumCalc(4, 4);
}
