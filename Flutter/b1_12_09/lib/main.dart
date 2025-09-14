import 'package:flutter/material.dart';

void main() {
  runApp(MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Align(
                alignment: Alignment.centerLeft,
                child: Column(children: [appAkademie("Hallo App Akademie!")]),
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Center(child: block("A", farbe: Colors.red)),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Center(child: block("B", farbe: Colors.green)),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Center(child: block("C")),
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Center(child: block("A", farbe: Colors.red)),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),

                  child: Center(child: block("B", farbe: Colors.green)),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Center(child: block("C")),
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [for (int i = 1; i <= 2; i++) Icon(Icons.face, size: 60, color: Colors.black)],
            ),
            Text("Hallo"),
          ],
        ),
      ),
    );
  }
}

// Block
Widget block(String text, {Color farbe = Colors.blue}) {
  return Container(
    // Äußerer Container
    color: farbe,
    height: 100,
    width: 100,
    alignment: Alignment.center,
    padding: EdgeInsets.only(left: 40, right: 40, top: 20, bottom: 20),
    child: Container(
      // Innerer Container
      decoration: BoxDecoration(
        color: const Color.fromARGB(221, 194, 107, 107),
        borderRadius: BorderRadius.circular(30),
      ),
      height: 30,
      width: 160,
      child: Center(
        child: Text(text, style: TextStyle(color: const Color.fromARGB(255, 1, 80, 145), fontSize: 20)),
      ),
    ),
  );
}

Widget appAkademie(String text) {
  return Column(
    children: [
      for (int i = 1; i <= 2; i++)
        Text(text, style: TextStyle(fontSize: 20, color: const Color.fromARGB(255, 8, 96, 168))),
    ],
  );
}
