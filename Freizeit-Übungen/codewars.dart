int points(List<String> games) {
  int x = 0;
  int y = 0;
  int score = 0;

  for (int i = 0; i < 9; i++) {
    print(games[i]);
    // x = int.tryParse(game[0]);
    // y = int.tryParse(game[2]);

    // x > y
    //     ? score += 3
    //     : x == y
    //     ? score += 1
    //     : ();
  }

  return score;
}

void main(List<String> args) {
  List<String> games = ['"3:1", "2:2", "0:1", "5:1"'];
  points(games);
  points(['"1:0"']);
}
