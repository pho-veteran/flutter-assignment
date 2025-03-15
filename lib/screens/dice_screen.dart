import 'package:flutter/material.dart';
import 'dart:math';

class DiceApp extends StatefulWidget {
  const DiceApp({super.key});

  @override
  State<DiceApp> createState() => _DiceAppState();
}

class _DiceAppState extends State<DiceApp> {
  var leftDiceNumber = 1;
  var rightDiceNumber = 1;

  void rollDice() {
    setState(() {
      rightDiceNumber = Random().nextInt(6) + 1;
      leftDiceNumber = Random().nextInt(6) + 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Dicee'),
        backgroundColor: const Color.fromARGB(255, 249, 94, 83),
        shadowColor: Colors.black,
        elevation: 1,
      ),
      body: Container(
        decoration: BoxDecoration(
          color: const Color.fromARGB(255, 249, 94, 83),
        ),
        child: Center(
          child: Row(
            children: <Widget>[
              Expanded(
                child: TextButton(
                  onPressed: rollDice,
                  child: Image(
                    image: AssetImage(
                      "assets/images/dices/dice$leftDiceNumber.png",
                    ),
                  ),
                ),
              ),
              Expanded(
                child: TextButton(
                  onPressed: rollDice,
                  child: Image(
                    image: AssetImage(
                      "assets/images/dices/dice$rightDiceNumber.png",
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
