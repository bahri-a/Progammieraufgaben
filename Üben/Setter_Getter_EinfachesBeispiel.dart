
// Getter ist nur dafür da, zu lesen unter einer Bedingung.

// Setter ist dafür da, um zu manipulieren unter einer Bedingung.

class Player {
  String? _nickname;
  String? _firstName;
  String? _lastName;
  String? _password;

  Player(this._nickname, this._firstName, this._lastName, this._password);

  String get fullname => "$_firstName $_lastName";
  String get nickname => "$_nickname";

  set newNickname(String newNick) {
    print("Versuch, Nickname zu ändern zu: $newNick");
    newNick.isNotEmpty ? (_nickname = newNick) : ();
  }

  set newPassword(String newPass) {
    print("Versuch, Passwort zu $newPass zu ändern ...");
    if (newPass.isNotEmpty && newPass.length >= 5) {
      _password = newPass;
      print("Erfolgreich PW geändert zu: $newPass");
    } else
      print("Fehler: PW nicht geändert zu $newPass.");
  }
}

void main(List<String> args) {
  Player ronaldo = Player("cr7", "Christiano", "Ronaldo", "saudi");

  // Getter (lesen)
  print("Fullname aktuell: ${ronaldo.fullname}");
  print("Nickname aktuell: ${ronaldo.nickname}");

  // Setter (schreiben)
  ronaldo.newNickname = "banana";
  print("Nickname geändert zu: ${ronaldo.nickname}");

  ronaldo.newPassword = "miau";
  ronaldo.newPassword = "Jahr2025";
}
