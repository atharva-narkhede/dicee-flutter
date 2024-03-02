import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  return runApp(MaterialApp(
    home: Scaffold(
      backgroundColor: Colors.teal.shade600,
      appBar: AppBar(
        title: Center(
          child: Text(
            'DICEE',
            style: TextStyle(fontFamily: 'SingleDay', fontSize: 50.0,color: Colors.white),
          ),
        ),
        backgroundColor: Colors.teal.shade800,
      ),
      body: DicePage(),
    ),
  ));
}

class DicePage extends StatefulWidget {
  const DicePage({super.key});

  @override
  State<DicePage> createState() => _DicePageState();
}

class _DicePageState extends State<DicePage> {
  int leftdicenumber = 1;
  int rightdicenumber = 1;

  void changedicenum() {
    setState(() {
      leftdicenumber = Random().nextInt(6) + 1;
      rightdicenumber = Random().nextInt(6) + 1;
    });
  }

  Widget build(BuildContext context) {
    return Center(
      child: Row(
        children: <Widget>[
          Expanded(
            child: TextButton(
                onPressed: () {
                  changedicenum();
                },
                child: Image.asset('images/dice$leftdicenumber.png')),
          ),
          Expanded(
            child: TextButton(
                onPressed: () {
                  changedicenum();
                },
                child: Image.asset('images/dice$rightdicenumber.png')),
          ),
        ],
      ),
    );
  }
}
