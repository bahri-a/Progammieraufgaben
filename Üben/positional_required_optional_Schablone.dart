class Human {
  final String name;
  final int? age;

  // name  1. required [ ] ODER optional [x]
  //       2. positional [ ] ODER named   [x]
  //       3. default    [x]
  // ------------------------------------------
  // age   1. required [ ] ODER optional [x]
  //       2. positional [ ] ODER named   [x]
  //       3. default    [ ]

  Human({this.name = "Unbekannt", this.age});
}

void main(List<String> args) {
  print(0);
}
