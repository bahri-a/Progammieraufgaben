import 'package:flutter/material.dart';

class BottomBar extends StatelessWidget {
  const BottomBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.bottomCenter,
      child: Padding(
        padding: const EdgeInsets.only(bottom: 30),
        child: Container(
          width: 250,
          height: 60,
          decoration: BoxDecoration(color: Colors.grey, borderRadius: BorderRadius.circular(30)),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            spacing: 30,
            children: [
              IconButton(onPressed: () {}, icon: Icon(Icons.home, size: 45), color: Colors.black),
              //Icon(Icons.home, size: 45),
              Icon(Icons.card_membership, size: 45),
              Icon(Icons.bar_chart_sharp, size: 45),
            ],
          ),
        ),
      ),
    );
  }
}
