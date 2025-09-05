// Interfaces sind im Prinzip abstrakte Klassen, jedoch völlig ohne Attribute und Konstruktor.
// Infertaces beinhalten lediglich Methoden undzwar ohne Implementierung, z. B. void eat();

abstract class Animal {
  void eat();
  void talk();
}

class Dog extends Animal {
  void eat() {
    print("I eat Knochen");
  }

  void talk() {
    print("I bark");
  }
}

class Cat extends Animal {
  void eat() {
    print("I eat fish");
  }

  void talk() {
    print("I meow");
  }
}

void main(List<String> args) {
  Animal cat1 = Cat();
  cat1.eat();
  cat1.talk();
}
