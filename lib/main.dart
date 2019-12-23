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
              Card(
                margin: EdgeInsets.symmetric(vertical: 20.0, horizontal: 20.0),
                color: Colors.white,
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    children: <Widget>[
                      Icon(
                        Icons.explore,
                        size: 45.0,
                      ),
                      SizedBox(
                        width: 15.0,
                      ),
                      Text(
                        'http://www.fabbers.io',
                        style: TextStyle(
                          fontSize: 20.0,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Card(
                margin: EdgeInsets.symmetric(vertical: 0.0, horizontal: 20.0),
                color: Colors.white,
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    children: <Widget>[
                      Icon(
                        Icons.email,
                        size: 45.0,
                      ),
                      SizedBox(
                        width: 15.0,
                      ),
                      Text(
                        'hola@beachlab.org',
                        style: TextStyle(
                          fontSize: 20.0,
                        ),
                      ),
                    ],
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
