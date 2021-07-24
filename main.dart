import 'package:flutter/material.dart';
import 'package:newapp/result.dart';
import './quiz.dart';
import './result.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _MyAppState();
  }
}

class _MyAppState extends State<MyApp> {
  static const _questions = [
    {
      'questionText': 'What\'s your favourite color?',
      'answers': [
        {'text': 'Black', 'score': 10},
        {'text': 'Green', 'score': 8},
        {'text': 'Gold', 'score': 4},
        {'text': ' Blue', 'score': 2}
      ]
    },
    {
      'questionText': 'What\'s your favourite animal?',
      'answers': [
        {'text': 'Dog', 'score': 9},
        {'text': ' Cat', 'score': 7},
        {'text': 'Goat', 'score': 4},
        {'text': ' Horse', 'Score': 10}
      ]
    },
    {
      'questionText': 'What\'s your favourite movie?',
      'answers': [
        {'text': 'Titanic', 'score': 3},
        {'text': ' Hunter', 'score': 7},
        {'text': 'Saving Private Ryan', 'score': 5},
        {'text': ' Jaws', 'score': 10}
      ]
    }
  ];
  var _questionIndex = 0;
  var _totalScore = 0;

  void _answerQuestion(int score) {
    _totalScore += score;
    setState(() {
      _questionIndex = _questionIndex + 1;
    });
    if (_questionIndex < _questions.length) {
      print('We have more question');
    } else {
      print('no more questions');
    }
    print(_questionIndex);
  }

  Widget build(BuildContext ctxt) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('KNOWING YOU'),
        ),
        body: _questionIndex < _questions.length
            ? Quiz(
                answerQuestion: _answerQuestion,
                questionIndex: _questionIndex,
                questions: _questions,
              )
            : Result(_totalScore),
      ),
    );
  }
}
