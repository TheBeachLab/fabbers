import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'dart:math';
import 'package:audioplayers/audio_cache.dart';

void main() {
  runApp(XylophoneApp());
}

class XylophoneApp extends StatelessWidget {
  void playSound(int note) {
    final player = AudioCache();
    player.play('note$note.wav');
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: SafeArea(
          child: Center(
            child: Column(
              children: <Widget>[
                FlatButton(
                  color: Colors.red,
                  onPressed: () {
                    playSound(1);
                  },
                  child: Container(),
                ),
                FlatButton(
                  color: Colors.orange,
                  onPressed: () {
                    playSound(2);
                  },
                  child: Container(),
                ),
                FlatButton(
                  color: Colors.yellow,
                  onPressed: () {
                    playSound(3);
                  },
                  child: Container(),
                ),
                FlatButton(
                  color: Colors.green,
                  onPressed: () {
                    playSound(4);
                  },
                  child: Container(),
                ),
                FlatButton(
                  color: Colors.cyan,
                  onPressed: () {
                    playSound(5);
                  },
                  child: Container(),
                ),
                FlatButton(
                  color: Colors.blue,
                  onPressed: () {
                    playSound(6);
                  },
                  child: Container(),
                ),
                FlatButton(
                  color: Colors.purple,
                  onPressed: () {
                    playSound(7);
                  },
                  child: Container(),
                ),
              ],
            ),
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
