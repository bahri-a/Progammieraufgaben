int biggerNumber(int a, int b) {
  return a > b ? a : b;
}

void main(List<String> args) {
  print("Bigger Number: ${biggerNumber(51, 2)}");
  print("Bigger Number: ${biggerNumber(2, 5)}");
  print("Bigger Number: ${biggerNumber(-5, 1)}");
}
