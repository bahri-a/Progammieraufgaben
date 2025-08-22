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

  Map<String, int> teilnehmer = {
    'Julietta': 4,
    'Benjamino': 5,
    'Hans-Günther': 4,
    'Evalinea': 2,
    'Fiona': 6,
    'Gregory': 6,
    'Leonhart': 3,
  };

  for (String n in teilnehmer.keys) {
    print(n);
  }

  print("");

  for (int p in teilnehmer.values) {
    print(p);
  }
  print("");
  for (String n in teilnehmer.keys) {
    print("${teilnehmer.keys} : ${teilnehmer.values}");
  }
}
