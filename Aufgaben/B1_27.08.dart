import "dart:io";

void convertMinutesToTime(int minutes) {
  int h = minutes ~/ 60; //int h = 0;
  int m = minutes % 60;
  // int counter = 0;
  // for (int i = 1; i <= minutes; i++) {
  //   counter++;
  //   if (counter == 60) {
  //     h++;
  //     counter = 0;
  //   }
  // }

  h == 1 ? stdout.write("$h Stunde, ") : stdout.write("$h Stunden, ");
  m == 1 ? print("$m Minute.") : print("$m Minuten.");
}

void main(List<String> args) {
  convertMinutesToTime(61);
}
