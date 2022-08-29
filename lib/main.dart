import 'dart:math';

import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  runApp(MaterialApp(
    home: Scaffold(
      appBar: AppBar(
        title: const Text("Twin Dice game"),
        backgroundColor: Colors.black,
      ),
      body: DiceGame(),
    ),
  ));
}

class DiceGame extends StatefulWidget {
  DiceGame({Key? key}) : super(key: key);

  @override
  State<DiceGame> createState() => _DiceGameState();
}

class _DiceGameState extends State<DiceGame> {
  int leftdice = 1;
  int rightdice = 2;

  rolldices() {
    setState(() {
      leftdice = Random().nextInt(6) + 1;
      rightdice = Random().nextInt(6) + 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(
        children: [
          Expanded(
            child: TextButton(
              onPressed: () {
                rolldices();
              },
              child: Image.asset("images/$leftdice.png"),
            ),
          ),
          Expanded(
            child: TextButton(
              onPressed: () {
                rolldices();
              },
              child: Image.asset("images/$rightdice.png"),
            ),
          )
        ],
      ),
    );
  }
}
