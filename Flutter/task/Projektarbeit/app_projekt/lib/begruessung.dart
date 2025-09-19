import 'package:flutter/material.dart';

class Begruessung extends StatelessWidget {
  String name;
  Begruessung({super.key, this.name = ""});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text("Hi, $name", style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold)), //!     Begrüßung
        Text("Here's your Dashboard"),
      ],
    );
  }
}
