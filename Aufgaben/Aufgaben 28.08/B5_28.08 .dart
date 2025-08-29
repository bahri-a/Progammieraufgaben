import "dart:io";

int countLetter(String text, String letter) {
  int counter = 0;
  for (int i = 0; i < text.length; i++) {
    text[i].toLowerCase() == letter ? counter++ : ();
  }
  return counter;
}

void main(List<String> args) {
  print(countLetter("Hallo", "l"));
  print(countLetter("abc", "c"));
  print(countLetter("Bobo", "b"));
}
