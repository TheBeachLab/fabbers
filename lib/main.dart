import 'package:flutter/material.dart';

void main() {
  runApp(FabberApp());
}

class FabberApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.deepOrange,
        body: SafeArea(
          child: Column(
            children: <Widget>[
              CircleAvatar(
                radius: 100,
                backgroundImage: AssetImage('images/character.png'),
              ),
              Text(
                'fabulous fabber',
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 40,
                    fontWeight: FontWeight.bold),
              )
            ],
          ),
        ),
      ),
    );
  }
}
