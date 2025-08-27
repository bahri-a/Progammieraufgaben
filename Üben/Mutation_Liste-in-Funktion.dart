void fooList(List<int> list1) {
  // Der Parameter dieser Funktion ist "List<int> list1" und nimmt somit int-Listen an. (wie int a)
  list1.add(3); // Fügt der list aus dem main, die im Original importiert wurde, die Zahl 3 hinzu. --> [1, 2, 3]
  list1 = [9]; // Erstellt eine neue Liste und lässt unsere ursprüngliche "fallen". --> [9]
  list1.add(4); // Fügt dieser neuen Liste die Zahl 4 hinzu. --> [9, 4]
  print(list1); // printed [9, 4]
}

void main(List<String> args) {
  List<int> list = [1, 2];
  fooList(list); // Unsere hier erstelle list [1, 2] wird der Funktion fooList als Argument übergeben. Gehe nun zur Funktion fooList().
  print(list); // Unsere list, die hier in der main ist, wird geprinted, samt der Veränderung innerhalb fooList.
}
