import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  final Function _restartQuizz;
  final int finalScore;

  String get resultPhrase {
    String resultText = 'You did it!';

    if (finalScore <= 1) {
      resultText = 'You are a noob.';
    } else if (finalScore <= 2) {
      resultText = 'You are normal.';
    } else if (finalScore <= 3) {
      resultText = 'You are a good person.';
    } else {
      resultText = 'You are the best.';
    }

    return resultText;
  }

  Result(this.finalScore, this._restartQuizz);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            resultPhrase,
            style: TextStyle(
              fontSize: 22,
              color: Colors.green,
            ),
          ),
          Padding(
            padding: EdgeInsets.all(25),
            child: ElevatedButton(
              onPressed: _restartQuizz,
              child: Text('Restart the Quizz'),
            ),
          ),
        ],
      ),
    );
  }
}
