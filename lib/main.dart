// ignore_for_file: deprecated_member_use

import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  runApp(const ballpage());
}

class ballpage extends StatelessWidget {
  const ballpage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white70,
        title: Text(
          'MAGIC BALL',
          style: TextStyle(
            fontSize: 12,
          ),
        ),
      ),
      body: ball(),
      ),
    );
  }
}

class ball extends StatefulWidget {
  const ball({Key key}) : super(key: key);

  @override
  State<ball> createState() => _ballState();
}

class _ballState extends State<ball> {
  int magicball = 1;
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(
        children: [
          Expanded(child: FlatButton(onPressed: () {
            setState(() {
              magicball = Random().nextInt(5) + 1;
            });
          },
          child: Image(
            image: AssetImage('images/ball$magicball.png'),
          ),
          ),
          ),
        ],
      ),
    );
  }
}
