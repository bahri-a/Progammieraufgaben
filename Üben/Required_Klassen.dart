void main(List<String> args) {
  Mensch bahri = Mensch(name: "Bahri", age: 22);
  //
  List<Mensch> mensch = [Mensch(name: "Bahri", age: 29), Mensch(name: "jan", age: 20)];

  Mensch m1 = Mensch(name: "abc", age: 18);
  Mensch m2 = Mensch(name: "efg", age: 28);
  List<Mensch> menschen = [m1, m2];
}

class Mensch {
  String? name;
  int? age;

  Mensch({required this.name, this.age});
}
