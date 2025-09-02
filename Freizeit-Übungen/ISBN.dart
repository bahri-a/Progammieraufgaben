import "dart:io";

String ISBN = "0-201-89683-4";

List<int> isbnLIST = [];

void isbnListErsteller(String isbnSTRING) {
  isbnSTRING = removeHyphenAndSpace(isbnSTRING);

  for (int i = 0; i < isbnSTRING.length; i++) {
    isbnLIST.add(int.tryParse(isbnSTRING[i])!);
  }
}

bool formelAnwenden(List isbnLIST) {
  int zehn = 10;
  int ergebnis = 0;

  if (isbnLIST.length > 10) {
    isbnLIST.removeAt(10);
    isbnLIST.removeAt(9);
    ergebnis += 10;
  }

  for (int zahl in isbnLIST) {
    ergebnis += zahl * zehn;
    zehn--;
  }

  if (ergebnis % 11 == 0) {
    return true;
  } else {
    return false;
  }
}

void main(List<String> args) {
  isbnListErsteller(ISBN);
  if (formelAnwenden(isbnLIST) == true) {
    print("Gültig!");
  } else
    print("Ungültig!");
}

String removeHyphenAndSpace(String isbnSTRING) {
  isbnSTRING = isbnSTRING.replaceAll("-", "");
  isbnSTRING = isbnSTRING.replaceAll(" ", "");
  isbnSTRING = isbnSTRING.replaceAll("X", "10");
  return isbnSTRING;
}
