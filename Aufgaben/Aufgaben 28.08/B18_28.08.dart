

void main(List<String> args) {
  print(umrechnung(10000));
}

(int, int, int) umrechnung(int sekundenzahl) {
  int stunden = sekundenzahl ~/ 3600;
  int minuten = (sekundenzahl - stunden * 3600) ~/ 60;
  int sekunden = (sekundenzahl - stunden * 3600 - minuten * 60);

  return (stunden, minuten, sekunden);
}
