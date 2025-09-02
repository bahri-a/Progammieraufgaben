import "dart:io";

void main(List<String> args) {
  isbnListErsteller(isbnNummer1);
  isGueltig(isbnLIST);

  isbnListErsteller(isbnNummer2);
  isGueltig(isbnLIST);

  isbnListErsteller(isbnNummer3);
  isGueltig(isbnLIST);

  isbnListErsteller(ungueltigeNummer4);
  isGueltig(isbnLIST);
}

String isbnNummer1 = "3-16-148410-X";
String isbnNummer2 = "0-201-61622-X";
String isbnNummer3 = "0-201-89683-4";
String ungueltigeNummer4 = "0-201-82683-4";

List<int> isbnLIST = [];

void isbnListErsteller(String isbnSTRING) {
  isbnLIST.clear();
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

String removeHyphenAndSpace(String isbnSTRING) {
  isbnSTRING = isbnSTRING.replaceAll("-", "");
  isbnSTRING = isbnSTRING.replaceAll(" ", "");
  isbnSTRING = isbnSTRING.replaceAll("X", "10");
  return isbnSTRING;
}

bool isGueltig(List<int> isbnLIST) {
  if (formelAnwenden(isbnLIST) == true) {
    print("Gültig!");
    return true;
  } else
    print("Ungültig!");
  return false;
}
