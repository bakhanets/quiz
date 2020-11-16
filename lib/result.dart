import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  final int resultScore;
  final Function resetHandler;

  Result(this.resultScore, this.resetHandler);

  String get resultPhrase {
    var resultText;
    if (resultScore == 30) {
      resultText = 'Lenin is proud of you';
    } else if (resultScore >= 28) {
      resultText = 'You are real Russian';
    } else if (resultScore > 22) {
      resultText = 'Good yob young Communist';
    } else {
      resultText = 'Developers suspect that you are a spy';
    }
    return resultText;
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: <Widget>[
          Text(
            resultPhrase,
            style: TextStyle(fontSize: 36, fontWeight: FontWeight.bold),
            textAlign: TextAlign.center,
          ),
          FlatButton(
            child: Text(
              'Restart Quiz!',
              style: TextStyle(fontSize: 20),
            ),
            textColor: Colors.amberAccent,
            onPressed: resetHandler,
          ),
        ],
      ),
    );
  }
}
