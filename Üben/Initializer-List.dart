class Rectangle {
  late double width;
  late double height;
  late double area;
  late double umfang;

  //                                    Initializer-List
  Rectangle(this.width, this.height) : area = width * height, umfang = width * 2 + height * 2;
}

void main(List<String> args) {
  Rectangle rec1 = Rectangle(2, 5);
  print(rec1.area);
  print(rec1.umfang);
}
