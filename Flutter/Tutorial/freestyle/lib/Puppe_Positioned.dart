import 'package:flutter/material.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Center(
          child: SizedBox(
            child: Stack(
              clipBehavior: Clip.none,
              children: [
                Container(height: 200, width: 200, color: const Color.fromARGB(255, 236, 229, 15)),
                Positioned(bottom: -150, right: 25, child: Container(height: 150, width: 50, color: Colors.red)),
                Positioned(
                  bottom: -150,
                  left: 25,
                  child: Container(height: 150, width: 50, color: const Color.fromARGB(255, 41, 19, 209)),
                ),
                Positioned(bottom: -175, left: -5, child: Container(height: 30, width: 80, color: Colors.black)),
                Positioned(bottom: -175, right: -5, child: Container(height: 30, width: 80, color: Colors.black)),
                Positioned(
                  bottom: 75,
                  right: -50,
                  child: Container(height: 30, width: 80, color: const Color.fromARGB(255, 223, 5, 5)),
                ),
                Positioned(
                  bottom: 75,
                  left: -50,
                  child: Container(height: 30, width: 80, color: const Color.fromARGB(255, 223, 5, 5)),
                ),
                Positioned(
                  bottom: 25,
                  right: -50,
                  child: Container(height: 80, width: 30, color: const Color.fromARGB(255, 223, 5, 5)),
                ),
                Positioned(
                  bottom: 25,
                  left: -50,
                  child: Container(height: 80, width: 30, color: const Color.fromARGB(255, 223, 5, 5)),
                ),
                Positioned(
                  bottom: 0,
                  left: -55,
                  child: Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(14),
                      color: const Color.fromARGB(255, 0, 0, 0),
                    ),
                    height: 40,
                    width: 40,
                  ),
                ),
                Positioned(
                  bottom: 0,
                  right: -55,
                  child: Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(14),
                      color: const Color.fromARGB(255, 0, 0, 0),
                    ),
                    height: 40,
                    width: 40,
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
