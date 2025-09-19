import 'package:flutter/material.dart';

void main() {
  runApp(Firstscreen());
}

class Firstscreen extends StatelessWidget {
  const Firstscreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: Scaffold(body: Center(child: Text(''))),
    );
  }
}
