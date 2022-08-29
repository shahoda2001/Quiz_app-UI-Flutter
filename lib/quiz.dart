import 'package:flutter/material.dart';
import 'quesion.dart';
import 'answer.dart';



class Quiz extends StatelessWidget {
   final Function(int score) answerQuestion;
  final List<Map<String, Object>> questions;
  final int questionIndex;
   Quiz(
    this.questions,
    this.questionIndex,
    this.answerQuestion, {
    Key? key,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Question(questions[questionIndex]['questionText'].toString()),
        ...(questions[questionIndex]['answers'] as List<Map<String, Object>>)
            .map((answer) {
          return Answer(
              () => answerQuestion(int.parse(answer['score'].toString())),
              answer['text'].toString());
        }).toList(),
      ],
    );
  }
}
