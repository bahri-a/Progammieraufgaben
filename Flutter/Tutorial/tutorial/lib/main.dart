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
          backgroundColor: const Color.fromARGB(255, 146, 192, 229),
          title: Text("Tutorial"),
          leading: Icon(Icons.add_photo_alternate_rounded),
          actions: [Padding(padding: const EdgeInsets.only(right: 16), child: Icon(Icons.settings))],
        ),
        body: Padding(
          padding: const EdgeInsets.only(top: 0),
          child: Stack(
            children: [
              //!Image.asset('assets/images/toast.jpg', fit: BoxFit.cover, height: 300),
              SizedBox(
                height: 300,
                child: Center(
                  child: Text("Toast", style: TextStyle(fontSize: 40, color: const Color.fromARGB(255, 10, 43, 232))),
                ),
              ),
              ListTile(
                tileColor: const Color.fromARGB(255, 24, 1, 108),
                leading: Icon(Icons.abc_rounded, color: const Color.fromARGB(255, 245, 55, 42), size: 65),
                title: Text(
                  textAlign: TextAlign.start,
                  "    Monheim",
                  style: TextStyle(fontSize: 30, color: Color.fromARGB(255, 245, 55, 42), fontWeight: FontWeight.w800),
                ),
                trailing: Icon(Icons.play_circle, color: Colors.redAccent),
                onTap: () {
                  print("Hakkii");
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
