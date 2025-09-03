class Mensch {
  String name;
  int? age;

  Mensch(this.name, {this.age});
}


// () --> positional & required
// [] --> positional & optional
// {} --> named & optional, wenn kein required

// positional (implizit required)
// Mensch(this.name, this.age); 

// optional positional (unnamed)
// Mensch([this.name, this.age]);

// optional named
// Mensch({this.name, this.age}); 

// required named
// Mensch({required this.name, required this.age}); 

// positonal combined with optional
// Mensch(this.name, [this.age]);

// positional combined with named+optional
// Mensch(this.name, {this.age});



