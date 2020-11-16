import 'package:flutter/material.dart';
import 'quiz.dart';
import 'result.dart';

void main() => runApp(new MyApp());

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _MyAppState();
  }
}

class _MyAppState extends State<MyApp> {
  final _questions = const [
    {
      'questionText': 'What is your favorite country?',
      'answers': [
        {'text': 'Russia', 'score': 10},
        {'text': 'USA', 'score': 8},
        {'text': 'China', 'score': 6},
        {'text': 'France', 'score': 4}
      ],
    },
    {
      'questionText': 'Who is your favorite president?',
      'answers': [
        {'text': 'Vladimir Putin', 'score': 10},
        {'text': 'Donald Trump', 'score': 8},
        {'text': 'Xi Jin Ping', 'score': 6},
        {'text': 'Emmanuel Macron', 'score': 4},
      ],
    },
    {
      'questionText': 'Favorite political party?',
      'answers': [
        {'text': 'Communists', 'score': 10},
        {'text': 'Republicans', 'score': 8},
        {'text': 'Democrats', 'score': 6},
        {'text': 'Liberals', 'score': 4},
      ],
    },
  ];
  var _questionIndex = 0;
  var _totalScore = 0;

  void _resetQuiz() {
    setState(() {
      _questionIndex = 0;
      _totalScore = 0;
    });
  }

  void _answerQuestion(int score) {
    _totalScore += score;
    setState(() {
      _questionIndex++;
    });
  }

  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.amberAccent,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.vertical(
              bottom: Radius.circular(30),
            ),
          ),
          title: Container(
            width: double.infinity,
            child: Text(
              'My quiz App',
              textAlign: TextAlign.center,
              style: TextStyle(color: Colors.black),
            ),
          ),
        ),
        body: _questionIndex < _questions.length
            ? Quiz(
                answerQuestion: _answerQuestion,
                questionIndex: _questionIndex,
                questions: _questions,
              )
            : Result(_totalScore,_resetQuiz),
      ),
    );
  }
}
