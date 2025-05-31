import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  runApp(
    MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.blue[300],
          title: Text(
            'Rock, Paper, Scissor',
            style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
          ),
          centerTitle: true,
        ),
        body: RockPaperScisor(),
      ),
    ),
  );
}

class RockPaperScisor extends StatefulWidget {
  const RockPaperScisor({super.key});

  @override
  State<RockPaperScisor> createState() => _RockPaperScisorState();
}

class _RockPaperScisorState extends State<RockPaperScisor> {
  int leftHand = 1;
  int rightHand = 1;

  void changeHand() {
    setState(() {
      leftHand = Random().nextInt(3) + 1;
      rightHand = Random().nextInt(3) + 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(
        children: <Widget>[
          Expanded(
            child: TextButton(
              onPressed: changeHand,
              child: Image.asset('images/img$leftHand.png'),
            ),
          ),
          Expanded(
            child: TextButton(
              onPressed: changeHand,
              child: Image.asset('images/img$rightHand.png'),
            ),
          ),
        ],
      ),
    );
  }
}
