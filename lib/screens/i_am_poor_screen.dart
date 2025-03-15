import 'package:flutter/material.dart';

class IAmPoorScreen extends StatelessWidget {
  const IAmPoorScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("I Am Poor", style: TextStyle(color: Colors.white)),
        backgroundColor: const Color.fromARGB(255, 34, 20, 1),
        iconTheme: IconThemeData(color: Colors.white),
      ),
      body: Center(child: Image.asset('assets/images/ore.png')),
      backgroundColor: const Color.fromARGB(255, 123, 74, 5),
    );
  }
}
