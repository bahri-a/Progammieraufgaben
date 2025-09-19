import 'package:app_projekt/begruessung.dart';
import 'package:app_projekt/box_erstellen.dart';
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
        body: Stack(
          children: [
            ListView(
              children: [
                Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(top: 15.0, left: 20, right: 20),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        spacing: 20,
                        children: [
                          Icon(Icons.circle, size: 60), //!                         Profilbild
                          Begruessung(name: "Bahri"),
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
                        FachBox(farbe: Colors.black),
                        FachBox(farbe: Colors.purple),
                      ],
                    ),
                  ],
                ),
              ],
            ),
            Align(
              alignment: Alignment.bottomCenter,
              child: Padding(
                padding: const EdgeInsets.only(bottom: 30),
                child: Container(width: 250, height: 60, color: Colors.grey),
              ),
            ), //!        BottomMenu
          ],
        ),
      ),
    );
  }
}
