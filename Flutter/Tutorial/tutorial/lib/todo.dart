import 'package:flutter/material.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          leading: IconButton(onPressed: () {}, icon: Icon(Icons.home, size: 34)),
          title: Text("Tutorial 2", style: TextStyle(fontSize: 34, color: const Color.fromARGB(255, 0, 0, 0))),
          actions: [
            Padding(padding: const EdgeInsets.only(right: 16.0), child: Icon(Icons.broadcast_on_personal, size: 34)),
          ],
        ),
        body: Column(
          children: [
            todo("Kaffee", icon: Icons.coffee_maker_outlined),
            todo("Lesen", icon: Icons.menu_book),
            todo("Schlafen", icon: Icons.bed_rounded),
            todo("Programmieren", icon: Icons.code),
          ],
        ),
      ),
    );
  }
}

class todo extends StatelessWidget {
  final IconData? icon;
  final String? text;
  const todo(this.text, {super.key, this.icon});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        decoration: BoxDecoration(
          border: BoxBorder.all(width: 2),
          borderRadius: BorderRadius.circular(25),
          color: const Color.fromARGB(255, 243, 222, 153),
        ),
        width: double.infinity,
        height: 60,
        padding: EdgeInsets.all(8),
        child: Center(
          child: Row(
            spacing: 12,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Icon(icon), //! Icon-Übergabe
              Text(text ?? "", style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold)), //! Text-Übergabe
            ],
          ),
        ),
      ),
    );
  }
}
