import 'package:flutter/material.dart';
import 'package:roll_a_dice/dice_page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          centerTitle: true,
          backgroundColor: Colors.red,
          leading: Icon(Icons.border_outer),
          title: Text(
            'ROLL THE DICE',
            style: TextStyle(
              letterSpacing: 1.5
            ),
          ),
        ),
        backgroundColor: Colors.red,
        body: SafeArea(child: DicePage()),
      ),
    );
  }
}
