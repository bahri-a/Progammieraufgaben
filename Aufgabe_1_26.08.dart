void main(List<String> args) {
  List<int> zahlen = [for (int i = 1; i <= 100; i++) i];

  for (int i = 0; i < zahlen.length; i++) {
    if (i < 9) {
      print("Kleine Zahl: ${zahlen[i]}");
    } else if (i < 59) {
      print("Mittlere Zahl: ${zahlen[i]}");
    } else {
      print("Große Zahl: ${zahlen[i]}");
    }
  }
}
