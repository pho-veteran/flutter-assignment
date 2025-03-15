import 'package:flutter/material.dart';
import 'package:test_1/screens/dice_screen.dart';
import 'package:test_1/screens/magic_ball_screen.dart';

import 'screens/home_screen.dart';
import 'screens/i_am_rich_screen.dart';
import 'screens/i_am_poor_screen.dart';
import 'screens/mi_card_screen.dart';

void main() {
  runApp(
    MaterialApp(
      initialRoute: '/',
      routes: {
        '/': (context) => HomeScreen(),
        '/iAmRichApp': (context) => IAmRichScreen(),
        '/iAmPoorApp': (context) => IAmPoorScreen(),
        '/miCardApp': (context) => MiCardScreen(),
        '/diceApp': (context) => DiceApp(),
        '/magicBallApp': (context) => MagicBallApp(),
      },
    ),
  );
}
