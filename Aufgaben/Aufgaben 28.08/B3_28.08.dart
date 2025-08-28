import "dart:io";

int sum(List<int> list) {
  int a = 0;
  int sumup(int x) => a += x;
  for (int zahl in list) {
    sumup(zahl);
  }
  return a;

  // for (int zahl in list) {
  //   a += zahl;
  // }
  // ;
}

void main(List<String> args) {
  List<int> numbers = [2, 2, 2];

  print(sum(numbers));
}
