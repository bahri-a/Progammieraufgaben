void main(List<String> args) {
  int age = 20;
  bool hasParentalConsent = false;
  int movieAgeRating = 18;

  if (age >= 18 || hasParentalConsent && ((movieAgeRating - age) <= 2)) {
    print("Darf in den Film.");
  } else {
    print("Darf nicht in den Film.");
  }
}
