void main(List<String> args) {
  int a = 1;

  switch (a) {
    case 1:
      print("Erste Wahl");
      print("2. Zeile");

    case 2:
      print("Zweite Wahl");

    default:
      print("Sonstige Wahl");
  }

  String gender = 'male';

  switch (gender) {
    case 'male':
      print('male');

    case 'female':
      print('female');
  }

  switch (1) {
    case 1:
      break;
    case 2:
      print("just two");
  }
}
