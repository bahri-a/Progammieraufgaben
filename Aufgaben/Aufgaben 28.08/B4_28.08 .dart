import "dart:io";

double sumlist(List<num> list) {
  double d = 0;
  for (num number in list) {
    d += number;
  }
  return d;
}

void main(List<String> args) {
  List<double> zahlen = [5, 10.0, 10];
  List<double> zahlen2 = [5, 100, 500.0];
  List<double> zahlen3 = [5, 5, 5];
  print(sumlist(zahlen));
  print(sumlist(zahlen2));
  print(sumlist(zahlen3));
}
