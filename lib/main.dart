import 'package:flutter/material.dart';

import 'quizz.dart';
import 'result.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _MyAppState();
  }
}

class _MyAppState extends State {
  int _questionIndex = 0;
  int _score = 0;

  void _answerQuestion(answer) {
    setState(() {
      _score += answer['score'];
      _questionIndex++;
    });
  }

  void _restartQuizz() {
    setState(() {
      _score = 0;
      _questionIndex = 0;
    });
  }

  @override
  Widget build(BuildContext context) {
    const List<Map<String, dynamic>> questions = [
      {
        'question': 'What\'s your favorite color?',
        'answers': [
          {
            'label': 'Black',
            'score': 1,
          },
          {
            'label': 'Blue',
            'score': 0,
          },
          {
            'label': 'Green',
            'score': 2,
          },
        ]
      },
      {
        'question': 'What\'s your favorite animal?',
        'answers': [
          {
            'label': 'Dog',
            'score': 2,
          },
          {
            'label': 'Cat',
            'score': 0,
          },
          {
            'label': 'Rabbit',
            'score': 1,
          },
        ]
      },
    ];

    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('MyApp'),
        ),
        body: _questionIndex < questions.length
            ? Quizz(
                questions: questions,
                answerQuestion: _answerQuestion,
                questionIndex: _questionIndex,
              )
            : Result(_score, _restartQuizz),
      ),
    );
  }
}
