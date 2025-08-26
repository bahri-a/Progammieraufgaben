void main(List<String> args) {
  List names = ["Bahri", "Jan"];
  List numbers = [1, 2];

  int anzahl = 0;

  for (int number in numbers) {
    print(number);
    print(names[anzahl]);
    anzahl++;
  }
}
