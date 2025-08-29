import "dart:io";

List<String> toDoList = [];

String? add(String aufgabe) {
  toDoList.add(aufgabe);
}

void anzeigen(List list) {
  print(list.join("\n"));
}

void main(List<String> args) {
  print("\nUnsere To-Do-Liste:\n");
  toDoList.add("hallo");
  toDoList.add("wie");
  anzeigen(toDoList);
}
