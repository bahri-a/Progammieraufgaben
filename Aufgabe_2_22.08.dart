void main(List<String> args) {
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
  int d = 0;
  for (int point in points) {
    d += point;
  }
  print(d / points.length);
}
