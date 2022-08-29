import 'package:flutter/material.dart';
import 'result.dart';
import 'quiz.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

bool isSwitched = false;

class _MyAppState extends State<MyApp> {
  int _questionIndex = 0;
  int _totalScore = 0;

  answerQuestion(int score) {
    setState(() {
      _questionIndex += 1;
      _totalScore += score;
    });
  }

  void _restartQuiz() {
    setState(() {
      _questionIndex = 0;
      _totalScore = 0;
    });
  }

  final List<Map<String, Object>> _questions = [
    {
      'questionText': 'what\'s your grading mark in mobile computing course?',
      'answers': [
        {'text': 'Excellent', 'score': 10},
        {'text': 'Very good', 'score': 8},
        {'text': 'Good', 'score': 7},
        {'text': 'Satisfied', 'score': 6},
      ]
    },
    {
      'questionText': 'what\'s your grading mark in Data Science course?',
      'answers': [
        {'text': 'Excellent', 'score': 10},
        {'text': 'Very good', 'score': 8},
        {'text': 'Good', 'score': 7},
        {'text': 'Satisfied', 'score': 6},
      ]
    },

    {
      'questionText': 'what\'s your grading mark in Image processing course?',
      'answers': [
        {'text': 'Excellent', 'score': 10},
        {'text': 'Very good', 'score': 8},
        {'text': 'Good', 'score': 7},
        {'text': 'Satisfied', 'score': 6},
      ]
    },
    {
      'questionText': 'what\'s your grading mark in Data structure course?',
      'answers': [
        {'text': 'Excellent', 'score': 10},
        {'text': 'Very good', 'score': 8},
        {'text': 'Good', 'score': 7},
        {'text': 'Satisfied', 'score': 6},
      ]
    },
  ];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(primarySwatch: Colors.red),
      home: Scaffold(
        appBar: AppBar(
          title: Center(
            child: Text(
              'Quiz App',
              style: TextStyle(
                color: isSwitched == false ? Colors.white : Colors.black,fontWeight: FontWeight.bold),
            ),
          ),
          actions: [
            Switch(
              value: isSwitched,
              onChanged: (value) {
                setState(() {
                  isSwitched = value;
                });
              },
            ),
          ],
        ),
        body: Container(

          color: isSwitched == false ? Colors.white : Colors.black,
          child: _questionIndex < _questions.length
              ? Quiz(_questions, _questionIndex, answerQuestion)
              : Result(_restartQuiz, _totalScore),
              
        ),
      ),
    );
  }
}
