import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'LeftOverBalken.dart';

void main() {
  runApp(Firstscreen());
}

class Firstscreen extends StatelessWidget {
  Firstscreen({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.grey.shade300,
        appBar: AppBar(backgroundColor: Colors.amber), //!            AppBar
        body: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 15.0, left: 20, right: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                spacing: 20,
                children: [
                  Icon(Icons.circle, size: 60), //!                         Profilbild
                  Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text("Hi, Bahri", style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold)), //!     Begrüßung
                      Text("Here's your Dashboard"),
                    ],
                  ),
                  SizedBox(width: 35),
                  Icon(Icons.pie_chart_sharp, size: 40), //!              Chart-ObenRechts
                ],
              ),
            ),
            SizedBox(height: 10),
            LeftOverCards(
              fach: "Mathe", //!          LeftOverBalken
              cardsLeft: "13 Cards left",
              fortschrittsBalken: Icons.bar_chart_sharp,
              farbe: Colors.pink,
            ),
            LeftOverCards(
              fach: "Arabisch", //!       LeftOverBalken
              cardsLeft: "23 Cards left",
              fortschrittsBalken: Icons.bar_chart_sharp,
              farbe: Colors.blue,
            ),
            BoxErstellen(
              fach: [
                FachBox(farbe: Colors.pink),
                FachBox(farbe: Colors.blue),
                FachBox(farbe: Colors.yellow),
                FachBox(farbe: Colors.green),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

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
