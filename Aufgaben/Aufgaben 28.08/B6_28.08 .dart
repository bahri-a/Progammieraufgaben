
bool containsLetter(String text, String letter) {
  bool exists = false;
  for (int i = 0; i < text.length; i++) {
    text[i].toLowerCase() == letter ? exists = true : ();
  }
  return exists;
}

void main(List<String> args) {
  print(containsLetter("Hallo", "l"));
  print(containsLetter("abc", "z"));
  print(containsLetter("Bobo", "b"));
}
