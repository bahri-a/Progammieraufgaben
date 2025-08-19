void main(List<String> args) {
  List<int> o = [1, 2, 3];

  o.add(4);
  o.addAll([5, 6, 7]);

  o += [8, 9];

  o
    ..add(10)
    ..add(11)
    ..add(12);

  print(o);
}
