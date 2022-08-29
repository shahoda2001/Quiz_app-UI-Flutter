import 'package:flutter/material.dart';

class Answer extends StatelessWidget {
   Answer(this.chooseAnswer , this.answers);

  final String answers;
  final Function() chooseAnswer;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(5),
      width: double.infinity,
      child: Container(
        child: ElevatedButton(
          onPressed: chooseAnswer ,
          child: Text(
            answers,
            style: TextStyle(fontSize: 25),
          ),
        ),
      ),
    );
  }
}
