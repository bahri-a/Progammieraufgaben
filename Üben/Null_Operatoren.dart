void main(List<String> args) {
  //if-null-Operator "??"

  String? user = 'Bahri';
  String name = user ?? 'noName'; // die "??" bedeuten quasi "falls Null, dann".

  // null-assignment-Operator "??="

  String? name2 = 'Bahri';
  name2 ??= 'noName'; // die "??" bedeuten quasi "falls Null, dann".

  // bang-Operator "!"

  String? name3 = 'Bahri';
  String text = "Hallo" + name3; // sagt aus: Prüfe nicht, ob es null ist.

  print(name + name2 + text);
}
