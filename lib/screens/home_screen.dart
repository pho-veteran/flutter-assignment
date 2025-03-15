import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Màn hình chính")),
      body: Center(
        child: Wrap(
          spacing: 20,
          runSpacing: 20,
          children: [
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(16),
                ),
                minimumSize: Size(50, 50),
              ),
              onPressed: () => Navigator.pushNamed(context, '/iAmRichApp'),
              child: Text("I Am Rich App"),
            ),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(16),
                ),
                minimumSize: Size(50, 50),
              ),
              onPressed: () => Navigator.pushNamed(context, '/iAmPoorApp'),
              child: Text("I Am Poor App"),
            ),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(16),
                ),
                minimumSize: Size(50, 50),
              ),
              onPressed: () => Navigator.pushNamed(context, '/miCardApp'),
              child: Text("MiCard"),
            ),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(16),
                ),
                minimumSize: Size(50, 50),
              ),
              onPressed: () => Navigator.pushNamed(context, '/diceApp'),
              child: Text("Dice App"),
            ),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(16),
                ),
                minimumSize: Size(50, 50),
              ),
              onPressed: () => Navigator.pushNamed(context, '/magicBallApp'),
              child: Text("Magic Ball App"),
            ),
          ],
        ),
      ),
    );
  }
}
