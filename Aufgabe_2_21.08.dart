void main(List<String> args) {
  String? sex;
  int? age;
  switch (sex) {
    case 'male':
      switch (age) {
        case 20:
        case 21:
        case 22:
        case 23:
        case 24:
        case 25:
          print("Im Schnitt 181,4m");
        case 26:
        case 27:
        case 28:
        case 29:
        case 30:
          print("Im Schnitt 181,3m");
        case 31:
        case 32:
        case 33:
        case 34:
        case 35:
          print("Im Schnitt 180,4m");
      }
  }

  switch (sex) {
    case 'female':
      switch (age) {
        case 20:
        case 21:
        case 22:
        case 23:
        case 24:
        case 25:
          print("Im Schnitt 167,5m");
        case 26:
        case 27:
        case 28:
        case 29:
        case 30:
          print("Im Schnitt 167,3m");
        case 31:
        case 32:
        case 33:
        case 34:
        case 35:
          print("Im Schnitt 167,2m");
      }
  }
}
