import 'package:flutter/material.dart';
import 'package:test_1/screens/clima_app/loading_screen.dart';

import 'screens/bmi_app/input_screen.dart';
import 'screens/bmi_app/result_screen.dart';
import 'screens/destini_screen.dart';
import 'screens/dice_screen.dart';
import 'screens/magic_ball_screen.dart';
import 'screens/quizzler_screen.dart';
import 'screens/xylophone_screen.dart';
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
        '/xylophoneApp': (context) => XylophoneApp(),
        '/quizzlerApp': (context) => QuizzlerApp(),
        '/destiniApp': (context) => DestiniApp(),
        '/bmiInput': (context) => BmiInputScreen(),
        '/bmiResult':
            (context) => BmiResultScreen(
              bmiResult: '',
              resultText: '',
              interpretation: '',
            ),
        '/climaApp': (context) => LoadingScreen(),
      },
    ),
  );
}
