void main(List<String> args) {
  describePerson(name: 'Bahri', age: 29);
  describePerson(age: 29, name: 'Bahri');
}

void describePerson({required String name, required int age}) {
  print("$name ist $age Jahre alt.");
}

// positioned, named, optional [int age = 0]

// Mischform? 
// Reihenfolge muss zuerst positioned sein dann named dann optional
// (int age, {required String name, bool isCEO = false}) { .... } 