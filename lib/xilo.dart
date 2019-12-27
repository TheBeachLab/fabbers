import 'package:flutter/material.dart';
import 'package:audioplayers/audio_cache.dart';

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
