void main() {
  List<int> points = [4, 5, 4, 2, 6, 6, 3];
  List<String> names = [
    'Julietta',
    'Benjamino',
    'Hans-Günther',
    'Evalinea',
    'Fiona',
    'Gregory',
    'Leonhart',
  ];

  Map<String, int> teilnehmer = {};
  int counter = 0;
  for (int point in points) {
    teilnehmer[names[counter]] = points[counter];
    counter++;
  }
  print(teilnehmer);
}
