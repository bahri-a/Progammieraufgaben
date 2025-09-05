String twoSort(List<String> arr) {
  arr.sort();
  String first = arr.first;
  String result = first.split('').join("***");
  return (result);
}

void main(List<String> args) {
  List<String> arr = ["Arnold", "Beatroce", "anna", "peter"];
  print(twoSort(arr));
}
