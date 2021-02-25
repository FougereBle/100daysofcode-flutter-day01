import 'package:flutter/material.dart';

class Answer extends StatelessWidget {
  final Function _answerQuestion;
  final dynamic _answer;

  Answer(this._answer, this._answerQuestion);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      child: ElevatedButton(
        child: Text(_answer['label']),
        onPressed: () => _answerQuestion(_answer),
        style: ButtonStyle(
          backgroundColor: MaterialStateProperty.all(Colors.green),
        ),
      ),
    );
  }
}
