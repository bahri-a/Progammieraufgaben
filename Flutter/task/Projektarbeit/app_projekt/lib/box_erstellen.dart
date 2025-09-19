import 'package:flutter/material.dart';

class BoxErstellen extends StatelessWidget {
  List<FachBox> fach;
  BoxErstellen({super.key, required this.fach});

  @override
  Widget build(BuildContext context) {
    return Wrap(spacing: 20, children: fach);
  }
}

class FachBox extends StatelessWidget {
  Color farbe;
  FachBox({super.key, required this.farbe});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 20.0),
      child: Container(
        height: 160,
        width: 160,
        decoration: BoxDecoration(
          color: farbe,
          border: BoxBorder.all(width: 8, color: Colors.white),
        ),
      ),
    );
  }
}
