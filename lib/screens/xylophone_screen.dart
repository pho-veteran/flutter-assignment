import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';

class XylophoneApp extends StatefulWidget {
  const XylophoneApp({super.key});

  @override
  State<XylophoneApp> createState() => _XylophoneAppState();
}

class _XylophoneAppState extends State<XylophoneApp> {
  void playSound(int soundNumber) {
    final player = AudioPlayer();
    player.play(UrlSource("assets/audio/note$soundNumber.wav"));
  }

  Expanded buildNoteKey({
    required Color color, 
    required int soundNumber
  }) {
    return Expanded(
      child: TextButton(
        onPressed: () {
          playSound(soundNumber);
        },
        style: TextButton.styleFrom(
          backgroundColor: color,
          shape: LinearBorder(),
        ),
        child: Text(''),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Xylophone'),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          buildNoteKey(color: Colors.red, soundNumber: 1),
          buildNoteKey(color: Colors.orange, soundNumber: 2),
          buildNoteKey(color: Colors.yellow, soundNumber: 3),
          buildNoteKey(color: Colors.green, soundNumber: 4),
          buildNoteKey(color: Colors.teal, soundNumber: 5),
          buildNoteKey(color: Colors.blue, soundNumber: 6),
          buildNoteKey(color: Colors.purple, soundNumber: 7),
        ],
      ),
    );
  }
}
