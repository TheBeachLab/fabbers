import 'package:flutter/material.dart';
import 'quizzbrain.dart';

QuizzBrain quizzBrain =
    QuizzBrain(); // create a quizzBrain object from QuizzBrain Class

class InstructQuizz extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.grey.shade300,
        body: SafeArea(
          child: QuizPage(),
        ),
      ),
    );
  }
}

class QuizPage extends StatefulWidget {
  @override
  _QuizPageState createState() => _QuizPageState();
}

class _QuizPageState extends State<QuizPage> {
  List<Icon> scoreKeeper = [];

  void checkAnswer(bool userAnswer) {
    bool correctAnswer = quizzBrain.getCorrectAnswer();
    setState(() {
      if (userAnswer == correctAnswer) {
        scoreKeeper
            .add(Icon(Icons.radio_button_unchecked, color: Colors.green));
      } else {
        scoreKeeper.add(Icon(Icons.radio_button_unchecked, color: Colors.red));
      }
      quizzBrain.nextQuestion();
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Row(
            children: scoreKeeper,
          ),
        ),
        Expanded(
          flex: 5,
          child: Center(
            child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: Text(
                quizzBrain.getQuestionText(),
                style: TextStyle(
                  fontSize: 30.0,
                ),
                textAlign: TextAlign.center,
              ),
            ),
          ),
        ),
        Expanded(
          child: Row(
            children: <Widget>[
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: FlatButton(
                    color: Colors.green.shade400,
                    textColor: Colors.white,
                    padding: EdgeInsets.all(10.0),
                    onPressed: () {
                      checkAnswer(true);
                    },
                    child: Text(
                      'True',
                      style: TextStyle(
                        fontSize: 35.0,
                      ),
                    ),
                  ),
                ),
              ),
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: FlatButton(
                    color: Colors.red.shade400,
                    textColor: Colors.white,
                    padding: EdgeInsets.all(10.0),
                    onPressed: () {
                      checkAnswer(false);
                    },
                    child: Text(
                      'False',
                      style: TextStyle(
                        fontSize: 35.0,
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
