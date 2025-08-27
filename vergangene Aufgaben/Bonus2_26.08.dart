import "dart:io";

void main(List<String> args) {
  int number = 5;

  for (int i = 1; i <= number; i++) {
    stdout.write("$i ");
    if (i == number) {
      for (int z = number - 1; z > 0; z--) stdout.write("$z ");
    }
  }
}
