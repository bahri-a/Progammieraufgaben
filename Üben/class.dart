class Pet {
  // Attribute
  String type;
  String name;
  int age;

  // Konstruktor (Bestimmt die Reihenfolge und damit sagen wir, dass die Initialisierung beim Aufruf stattfindet)
  Pet(this.type, this.name, this.age);
}

void main(List<String> args) {
  Pet pet1 = Pet('Hund', 'Bello', 3);
  Pet pet2 = Pet('Katze', 'Findik', 6);

  print("${pet1.type} ${pet1.name} ${pet1.age}");
  print(pet2.name);

  // Klasse in einer Liste nutzen:
  List<Pet> petList = [pet1 = Pet("Hund", "Bello", 3), pet2 = Pet("Katze", "Findik", 6)];
}
