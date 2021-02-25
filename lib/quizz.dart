import 'package:flutter/material.dart';

import 'answer.dart';
import 'question.dart';

class Quizz extends StatelessWidget {
  final List<Map<String, dynamic>> questions;
  final Function answerQuestion;
  final int questionIndex;

  Quizz({
    @required this.questions,
    @required this.answerQuestion,
    @required this.questionIndex,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Question(questions[questionIndex % questions.length]['question']),
        ...questions[questionIndex % questions.length]['answers'].map((a) {
          return Answer(a, answerQuestion);
        }),
      ],
    );
  }
}
