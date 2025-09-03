class Mensch {
  String name;
  int age;

  Mensch(this.name, {this.age = 0});
}

// positional (implizit required)
// Mensch(this.name, this.age); 

// optional named
// Mensch({this.name, this.age}); 

// required named
// Mensch({required this.name, required this.age}); 



