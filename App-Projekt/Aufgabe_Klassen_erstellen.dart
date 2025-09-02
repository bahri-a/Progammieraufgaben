void main() {}

class Faecher {
  String fach;
  String color;

  int anzahlKarten;

  Faecher(this.fach, this.color, this.anzahlKarten);
}

class Cards {
  Faecher fach;
  dynamic vorderseite;
  dynamic rueckseite;

  bool isCorrect;

  Cards(this.fach, this.vorderseite, this.rueckseite, this.isCorrect);
}

class Charts {
  int correctAnswer;
  int wrongAnswer;
  int correctPercent;
  int wrongPercent;

  Charts(this.correctAnswer, this.wrongAnswer, this.correctPercent, this.wrongPercent);
}

class LogIn {
  String username;
  String password;
  String email;

  LogIn(this.username, this.password, [this.email = ""]);
}
