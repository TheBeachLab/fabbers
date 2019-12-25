import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'dart:math';
import 'package:audioplayers/audio_cache.dart';
import 'quizzbrain.dart';

QuizzBrain quizzBrain =
    QuizzBrain(); // create a quizzBrain object from QuizzBrain Class

void main() {
  runApp(InstructQuizz());
}

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
                      setState(
                        () {
                          bool correctAnswer = quizzBrain.getCorrectAnswer();
                          if (correctAnswer == true) {
                            scoreKeeper.add(
                              Icon(
                                Icons.radio_button_unchecked,
                                color: Colors.green,
                              ),
                            );
                          } else {
                            scoreKeeper.add(
                              Icon(
                                Icons.radio_button_unchecked,
                                color: Colors.red,
                              ),
                            );
                          }
                          quizzBrain.nextQuestion();
                        },
                      );
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
                      setState(
                        () {
                          bool correctAnswer = quizzBrain.getCorrectAnswer();
                          if (correctAnswer == true) {
                            scoreKeeper.add(
                              Icon(
                                Icons.radio_button_unchecked,
                                color: Colors.red,
                              ),
                            );
                          } else {
                            scoreKeeper.add(
                              Icon(
                                Icons.radio_button_unchecked,
                                color: Colors.green,
                              ),
                            );
                          }
                          quizzBrain.nextQuestion();
                        },
                      );
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

class XylophoneApp extends StatelessWidget {
  void playSound(int note) {
    final player = AudioCache();
    player.play('note$note.wav');
  }

  Expanded paintKey({int key, Color keyColor}) {
    return Expanded(
      child: FlatButton(
        color: keyColor,
        onPressed: () {
          playSound(key);
        },
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.black,
        body: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            mainAxisSize: MainAxisSize.max,
            children: <Widget>[
              paintKey(key: 1, keyColor: Colors.red),
              paintKey(key: 2, keyColor: Colors.orange),
              paintKey(key: 3, keyColor: Colors.yellow),
              paintKey(key: 4, keyColor: Colors.green),
              paintKey(key: 5, keyColor: Colors.cyan),
              paintKey(key: 6, keyColor: Colors.blue),
              paintKey(key: 7, keyColor: Colors.purple),
            ],
          ),
        ),
      ),
    );
  }
}

void DiceApp() {
  MaterialApp(
    debugShowCheckedModeBanner: false,
    home: Scaffold(
      backgroundColor: Colors.deepOrange,
      appBar: AppBar(
        title: Text('Random Generator'),
        backgroundColor: Colors.deepOrange.shade800,
      ),
      body: DicePage(),
    ),
  );
}

class DicePage extends StatefulWidget {
  @override
  _DicePageState createState() => _DicePageState();
}

class _DicePageState extends State<DicePage> {
  int leftDiceNumber = 1;
  int rightDiceNumber = 6;

  void rollDice() {
    setState(() {
      leftDiceNumber = Random().nextInt(6) + 1;
      rightDiceNumber = Random().nextInt(6) + 1;
    });
    print('A button got pressed.');
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(
        children: <Widget>[
          Expanded(
            child: FlatButton(
              onPressed: () {
                rollDice();
              },
              child: Image.asset('images/dice$leftDiceNumber.png'),
            ),
          ),
          Expanded(
            child: FlatButton(
              onPressed: () {
                rollDice();
              },
              child: Image.asset('images/dice$rightDiceNumber.png'),
            ),
          ),
        ],
      ),
    );
  }
}

class FabberApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.deepOrange,
        body: SafeArea(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              CircleAvatar(
                radius: 100,
                backgroundImage: AssetImage('images/character.png'),
              ),
              Text(
                'fab(ulous) fabber',
                style: TextStyle(
                  fontFamily: 'PatuaOne',
                  color: Colors.white,
                  fontSize: 40,
                  letterSpacing: 1.5,
                ),
              ),
              Text(
                'find amazing people with incredible skills',
                style: TextStyle(
                  fontFamily: 'PatuaOne',
                  color: Colors.deepOrange.shade200,
                  fontSize: 20.0,
                ),
              ),
              SizedBox(
                height: 20.0,
                width: 200.0,
                child: Divider(
                  color: Colors.deepOrange.shade100,
                ),
              ),
              Card(
                margin: EdgeInsets.symmetric(vertical: 10.0, horizontal: 20.0),
                color: Colors.white,
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: ListTile(
                    leading: Icon(
                      Icons.explore,
                      color: Colors.grey.shade800,
                      size: 45.0,
                    ),
                    title: Text(
                      'http://www.fabbers.io',
                      style: TextStyle(
                        fontSize: 20.0,
                      ),
                    ),
                  ),
                ),
              ),
              Card(
                margin: EdgeInsets.symmetric(vertical: 0.0, horizontal: 20.0),
                color: Colors.white,
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: ListTile(
                    leading: Icon(
                      Icons.email,
                      size: 45.0,
                      color: Colors.grey.shade800,
                    ),
                    title: Text(
                      'hola@beachlab.org',
                      style: TextStyle(
                        fontSize: 20.0,
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
