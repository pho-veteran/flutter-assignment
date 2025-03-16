import 'package:flutter/material.dart';
import 'package:rflutter_alert/rflutter_alert.dart';

class QuizzlerApp extends StatelessWidget {
  const QuizzlerApp({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Quizzler'),
        backgroundColor: Colors.grey.shade900,
        foregroundColor: Colors.white,
        iconTheme: IconThemeData(color: Colors.white),
      ),
      backgroundColor: Colors.grey.shade900,
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 10.0, vertical: 10.0),
          child: QuizPage(),
        ),
      ),
    );
  }
}

class QuizPage extends StatefulWidget {
  const QuizPage({super.key});

  @override
  State<QuizPage> createState() => _QuizPageState();
}

class _QuizPageState extends State<QuizPage> {
  int currentQuestionIndex = 0;
  int score = 0;
  List<Icon> scoreKeeper = [];

  void checkAnswer(bool userPickedAnswer) {
    bool correctAnswer = questionBank[currentQuestionIndex].questionAnswer;

    if (userPickedAnswer == correctAnswer) {
      scoreKeeper.add(Icon(Icons.check, color: Colors.green));
      score++;
    } else {
      scoreKeeper.add(Icon(Icons.close, color: Colors.red));
    }

    setState(() {
      if (currentQuestionIndex < questionBank.length - 1) {
        currentQuestionIndex++;
      } else {
        Alert(
          context: context,
          style: AlertStyle(
            isCloseButton: false,
            isOverlayTapDismiss: false
          ),
          type: AlertType.success,
          title: 'Finished!',
          desc:
              'You\'ve reached the end of the quiz.\nScore: $score/${questionBank.length}',
          buttons: [
            DialogButton(
              onPressed: () => Navigator.pushNamed(context, "/"),
              width: 120,
              color: Colors.red,
              child: Text(
                'Go back',
                style: TextStyle(color: Colors.white, fontSize: 20),
              ),
            ),
            DialogButton(
              onPressed:
                  () => {
                    setState(() {
                      currentQuestionIndex = 0;
                      score = 0;
                      scoreKeeper = [];
                    }),
                    Navigator.pop(context),
                  },
              width: 120,
              color: Colors.green,
              child: Text(
                'Restart',
                style: TextStyle(color: Colors.white, fontSize: 20),
              ),
            ),
          ],
        ).show();
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: <Widget>[
        Expanded(
          flex: 5,
          child: Padding(
            padding: EdgeInsets.all(10.0),
            child: Center(
              child: Text(
                questionBank[currentQuestionIndex].questionText,
                textAlign: TextAlign.center,
                style: TextStyle(fontSize: 25.0, color: Colors.white),
              ),
            ),
          ),
        ),
        Expanded(
          child: Padding(
            padding: EdgeInsets.all(15.0),
            child: TextButton(
              style: TextButton.styleFrom(
                foregroundColor: Colors.white,
                backgroundColor: Colors.green,
              ),
              child: Text(
                'True',
                style: TextStyle(color: Colors.white, fontSize: 20.0),
              ),
              onPressed: () {
                checkAnswer(true);
              },
            ),
          ),
        ),
        Expanded(
          child: Padding(
            padding: EdgeInsets.all(15.0),
            child: TextButton(
              style: TextButton.styleFrom(backgroundColor: Colors.red),
              child: Text(
                'False',
                style: TextStyle(fontSize: 20.0, color: Colors.white),
              ),
              onPressed: () {
                checkAnswer(false);
              },
            ),
          ),
        ),
        //TODO: Add a Row here as your score keeper
        Row(children: scoreKeeper),
      ],
    );
  }
}

/*
question1: 'You can lead a cow down stairs but not up stairs.', false,
question2: 'Approximately one quarter of human bones are in the feet.', true,
question3
*/
class Question {
  String questionText;
  bool questionAnswer;

  Question(this.questionText, this.questionAnswer);
}

List<Question> questionBank = [
  Question('Some cats are actually allergic to humans', true),
  Question('You can lead a cow down stairs but not up stairs.', false),
  Question('Approximately one quarter of human bones are in the feet.', true),
  Question('A slug\'s blood is green.', true),
  Question('Buzz Aldrin\'s mother\'s maiden name was \"Moon\".', true),
  Question('It is illegal to pee in the Ocean in Portugal.', true),
  Question(
    'No piece of square dry paper can be folded in half more than 7 times.',
    false,
  ),
  Question(
    'In London, UK, if you happen to die in the House of Parliament, you are technically entitled to a state funeral, because the building is considered too sacred a place.',
    true,
  ),
  Question(
    'The loudest sound produced by any animal is 188 decibels. That animal is the African Elephant.',
    false,
  ),
  Question(
    'The total surface area of two human lungs is approximately 70 square metres.',
    true,
  ),
  Question('Google was originally called \"Backrub\".', true),
  Question(
    'Chocolate affects a dog\'s heart and nervous system; a few ounces are enough to kill a small dog.',
    true,
  ),
  Question(
    'In West Virginia, USA, if you accidentally hit an animal with your car, you are free to take it home to eat.',
    true,
  ),
];
