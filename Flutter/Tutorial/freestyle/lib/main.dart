import 'package:flutter/material.dart';

void main() {
  runApp(const MainApp());
}

List<int> zahlen = [1, 2, 3, 4, 5, 6, 7];

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Center(
          child: CarouselView(
            controller: CarouselController(),
            scrollDirection: Axis.vertical,
            itemExtent: 100,
            children: List<Widget>.generate(5, (int index) {
              return Center(child: Text("${zahlen[index]}"));
            }),
          ),
        ),
      ),
    );
  }
}
