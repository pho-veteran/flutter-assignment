import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  ElevatedButton buildElevatedButton(BuildContext context, {
    required String text,
    required String route,
  }) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(16),
        ),
        minimumSize: Size(50, 50),
      ),
      onPressed: () => Navigator.pushNamed(context, route),
      child: Text(text),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Homepage")),
      body: Center(
        child: Wrap(
          spacing: 20,
          runSpacing: 20,
          children: [
            buildElevatedButton(context, text: "I Am Rich App", route: '/iAmRichApp'),
            buildElevatedButton(context, text: "I Am Poor App", route: '/iAmPoorApp'),
            buildElevatedButton(context, text: "My Card", route: '/miCardApp'),
            buildElevatedButton(context, text: "Dice App", route: '/diceApp'),
            buildElevatedButton(context, text: "Magic Ball App", route: '/magicBallApp'),
            buildElevatedButton(context, text: "Xylophone App", route: '/xylophoneApp'),
            buildElevatedButton(context, text: "Quizzler App", route: '/quizzlerApp'),
            buildElevatedButton(context, text: "Destini Teller", route: '/destiniApp'),
            buildElevatedButton(context, text: "BMI Calculator", route: '/bmiInput'),
            buildElevatedButton(context, text: "Clima App", route: '/climaApp'),
          ],
        ),
      ),
    );
  }
}
