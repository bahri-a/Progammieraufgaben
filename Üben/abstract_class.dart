// Von abstrakten Klassen kann man keine direkten Instanzen erstellen, nur von den Kindsklassen.
abstract class Animal {
  String type;

  // Diese beiden Methoden MÜSSEN von allen Kindsklassen angewendet werden.
  void eat();
  void talk();

  Animal(this.type);
}

class Dog extends Animal {
  Dog(super.type);

  void eat() {
    print("I eat Knochen");
  }

  void talk() {
    print("I bark");
  }
}

class Cat extends Animal {
  Cat(super.type);

  void eat() {
    print("I eat fish");
  }

  void talk() {
    print("I meow");
  }
}

void main(List<String> args) {
  Animal cat1 = Cat("Mauzi");
  cat1.eat();
  cat1.talk();
}
