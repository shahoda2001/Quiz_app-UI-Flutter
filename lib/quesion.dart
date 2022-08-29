import 'package:flutter/material.dart';
import 'main.dart';

class Question extends StatelessWidget {
   // ignore: prefer_const_constructors_in_immutables, use_key_in_widget_constructors
   Question(this.questionText);

  final String questionText;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin:EdgeInsets.all(30),
      child: Center(
        child: Text(
          questionText,
          style: TextStyle(
            color: isSwitched == false ? Colors.black : Colors.white,
            fontSize: 30,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    );
  }
}
