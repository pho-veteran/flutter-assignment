import 'package:flutter/material.dart';

class IAmRichScreen extends StatelessWidget {
  const IAmRichScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("I Am Rich"),
        backgroundColor: const Color.fromARGB(255, 99, 203, 255),
      ),
      body: Center(child: Image.asset('assets/images/diamond.png')),
      backgroundColor: const Color.fromARGB(255, 99, 203, 255),
    );
  }
}
