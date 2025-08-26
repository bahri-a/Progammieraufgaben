void main(List<String> args) {
  String word = "anna";
  bool isPalindrom = true;
  int buchstabe_hinten = word.length - 1;

  for (int i = 0; i <= word.length / 2; i++) {
    if (word[i] == word[buchstabe_hinten]) {
      buchstabe_hinten--;
      isPalindrom = true;
    } else {
      isPalindrom = false;
      break;
    }
  }
  isPalindrom
      ? print("Das Wort '$word' ist ein Palindrom.")
      : print("Das Wort '$word' ist KEIN Palindrom.");
}
