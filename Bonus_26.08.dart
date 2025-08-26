void main() {
  String word = "ottooo";
  bool isPalindrom = true;
  // Hier deine for-Schleife:

  for (int i = 0; i < word.length / 2; i++) {
    if (word.length % 2 != 0) {
      isPalindrom = false;
      break;
    } else if (word[i] == word[word.length - 1 - i])
      isPalindrom == true;
    else {
      isPalindrom == false;
    }
  }

  print(isPalindrom);

  // if (isPalindrom) {
  //   print('$word ist ein Palindrom');
  // } else {
  //   print('$word ist kein Palindrom');
  // }
}
