import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  return runApp(
    MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.red,
        appBar: AppBar(
          title: Text('Dicee'),
          backgroundColor: Colors.red,
        ),
        body: DicePage(),
      ),
    ),
  );
}

class DicePage extends StatefulWidget {

  @override
  State<DicePage> createState() => _DicePageState();
}

class _DicePageState extends State<DicePage> {

  int leftDice = 6;
  int rightDice = 6;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(
        children: <Widget>[
          Expanded(
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: TextButton(
                    onPressed: () {
                      setState(() {
                        leftDice = Random().nextInt(6)+1;
                        rightDice = Random().nextInt(6)+1;
                      });
                    },
                  child: Image(image: AssetImage('images/dice$leftDice.png')
                  ),
                ),
              )
          ),
          Expanded(
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: TextButton(
                  child: Image(image: AssetImage('images/dice$rightDice.png')
                  ),
                  onPressed: () {
                    setState(() {
                      leftDice = Random().nextInt(6)+1;
                      rightDice = Random().nextInt(6)+1;
                    });
                  },
                ),
              )
          ),
        ],
      ),
    );
  }
}

