import 'package:flutter/material.dart';
import 'dart:math';

class MagicBallApp extends StatefulWidget {
  const MagicBallApp({super.key});

  @override
  State<MagicBallApp> createState() => _MagicBallAppState();
}

class _MagicBallAppState extends State<MagicBallApp> {
  var currentBall = 3;

  void getBall() {
    setState(() {
      currentBall = Random().nextInt(5) + 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Magic Ball', style: TextStyle(color: Colors.white)),
        // Mystic dark color
        backgroundColor: Colors.black,
        shadowColor: Colors.white,
        elevation: 1,
        iconTheme: IconThemeData(color: Colors.white), // Make arrow white
      ),
      body: Container(
        decoration: BoxDecoration(color: Colors.black87),
        child: Center(
          child: TextButton(
            onPressed: getBall,
            child: Image(
              image: AssetImage("assets/images/balls/ball$currentBall.png"),
            ),
          ),
        ),
      ),
    );
  }
}
