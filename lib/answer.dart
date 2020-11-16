import 'package:flutter/material.dart';

class Answer extends StatelessWidget {
  final Function selectHandler;
  final String answerText;

  Answer(this.selectHandler, this.answerText);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      child: RaisedButton(
        shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(17.0),
            side: BorderSide(color: Colors.black)),
        color: Colors.amberAccent,
        textColor: Colors.black,
        child: Text(answerText),
        onPressed: selectHandler,
      ),
    );
  }
}
