import "dart:io";

void printGrades(List<int> grades) {
  for (int i = 1; i <= grades.length; i++) {
    i == grades.length ? print("$i.Note: ${grades[i - 1]}.") : stdout.write("$i.Note: ${grades[i - 1]}, ");
  }
}

void calculateAverage(List<int> grades) {
  double d = 0;
  for (int i = 0; i < grades.length; i++) {
    d += grades[i];
  }
  d = (((d / grades.length) * 100).roundToDouble() / 100);
  print("Der Durchschnitt ist: $d");
}

void analyzeGrades(List<int> grades) {
  printGrades(grades);
  calculateAverage(grades);
}

void main(List<String> args) {
  List<int> grades = [3, 2, 3, 1, 2, 2];
  analyzeGrades(grades);
}
