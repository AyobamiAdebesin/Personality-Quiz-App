import 'package:flutter/material.dart';
import 'package:flutter_application_1/result.dart';

import 'quiz.dart';

void main(List<String> args) {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  //const MyApp({Key? key}) : super(key: key);

  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  final _questions = const [
    {
      'questionText': "What is your favorite color?",
      'answers': [
        {'text': 'Blue', 'score': 10},
        {'text': 'Yellow', 'score': 6},
        {'text': 'Green', 'score': 1},
        {'text': 'Red', 'score': 3},
      ]
    },
    {
      'questionText': "What is your favorite animal",
      'answers': [
        {'text': 'Cat', 'score': 10},
        {'text': 'Dog', 'score': 6},
        {'text': 'Rabbit', 'score': 3},
        {'text': 'Squirrel', 'score': 1}
      ]
    },
    {
      'questionText': "Whats your favorite meal?",
      'answers': [
        {'text': 'Rice', 'score': 10},
        {'text': 'beans', 'score': 6},
        {'text': 'burger', 'score': 3},
        {'text': 'spaghetti', 'score': 1}
      ]
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
      _questionIndex += 1;
      print(_questionIndex);
    });

    if (_questionIndex < _questions.length) {
      print('We have more questions!');
    }
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Personality Quiz App'),
          backgroundColor: Colors.teal,
        ),
        body: _questionIndex < _questions.length
            ? Quiz(
                questions: _questions,
                questionIdx: _questionIndex,
                answerquestion: _answerQuestion,
              )
            : Result(
                resultScore: _totalScore,
                resetQuizHandler: _resetQuiz,
              ),
      ),
    );
  }
}
