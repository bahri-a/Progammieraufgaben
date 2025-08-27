import "dart:io";

void sumCalc(int x, int y) {
  stdout.write("Berechnung $x + $y = ");
  (x + y < 10)
      ? print("${(x + y)} (Kleine Zahl)")
      : (x + y >= 10)
      ? print("${x + y} (Große Zahl)")
      : (); // oder null
}

void main(List<String> args) {
  sumCalc(4, 4);
  sumCalc(8, 4);
}
