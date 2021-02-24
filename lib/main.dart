import 'package:flutter/material.dart';
import 'package:my_flutter_project/answer.dart';

import 'question.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _MyAppState();
  }
}

class _MyAppState extends State {
  int _questionIndex = 0;

  void _answerQuestion() {
    setState(() {
      _questionIndex++;
    });
  }

  @override
  Widget build(BuildContext context) {
    const List<Map<String, dynamic>> questions = [
      {
        'question': 'What\'s your favorite color?',
        'answers': ['Black', 'Red', 'Green', 'Blue']
      },
      {
        'question': 'What\'s your favorite animal?',
        'answers': ['Dog', 'Cat', 'Horse', 'Crocodile']
      },
    ];

    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('MyApp'),
        ),
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Question(questions[_questionIndex % questions.length]['question']),
            ...questions[_questionIndex % questions.length]['answers'].map((a) {
              return Answer(a, _answerQuestion);
            }),
          ],
        ),
      ),
    );
  }
}
