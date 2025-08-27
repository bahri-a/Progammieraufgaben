void reverseInitials(String vor, String nach) {
  String a = vor[vor.length - 1];
  String b = nach[nach.length - 1];
  print(a.toUpperCase() + ". " + b.toUpperCase() + ".");
}

void main(List<String> args) {
  reverseInitials("Bahri", "Akcora");
  reverseInitials("Peter", "Özsoy");
  reverseInitials("Can", "Müller");
}
