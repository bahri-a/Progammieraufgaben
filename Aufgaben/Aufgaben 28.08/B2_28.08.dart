import "dart:io";

String isEvenNumber(int a) {
  String result;
  a % 2 == 0 ? result = "even." : result = "not even.";
  stdout.write("Number $a is ");
  return result;
}

void main(List<String> args) {
  print(isEvenNumber(2));
  print(isEvenNumber(3));
  print(isEvenNumber(8));
}
