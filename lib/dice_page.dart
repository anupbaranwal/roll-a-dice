import 'dart:math';

import 'package:flutter/material.dart';

class DicePage extends StatefulWidget {
  @override
  _DicePageState createState() => _DicePageState();
}

class _DicePageState extends State<DicePage> {
  int leftDiceNumber = 2;
  int rightDiceNumber = 6;
  Random numberGenerator = Random();

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Text(
            'Roll The Dice',
            style: TextStyle(
              fontSize: 50,
              fontFamily: 'Pacifico'
            ),
          ),
          Row(
            children: <Widget>[
              Expanded(
                child: FlatButton(
                  child: Image.asset('images/dice$leftDiceNumber.png'),
                  onPressed: () => {
                    setState((){
                      leftDiceNumber =  numberGenerator.nextInt(6) + 1;
                    }),
                  },
                )
              ),
              Expanded(
                child: FlatButton(
                  child: Image.asset('images/dice$rightDiceNumber.png'),
                  onPressed: () => {
                    setState((){
                      rightDiceNumber =  numberGenerator.nextInt(6) + 1;
                    }),
                  },
                )
              )
            ],
          ),
        ],
      ),
    );
  }
}