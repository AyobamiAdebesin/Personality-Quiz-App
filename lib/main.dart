import 'package:flutter/material.dart';
import 'package:flutter_application_1/result.dart';

import 'quiz.dart';
import 'result.dart';

void main() => runApp(MyApp());

//This class or widget can be recreated
class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _MyAppState();
  }
}

//This class or widget is persistent
//We have to make the fields/properties of this class final
class _MyAppState extends State<MyApp> {
  var _questions = [
    {
      'questionText': "What's your favorite color?",
      'answers': ['red', 'yellow', 'blue', 'green']
    },
    {
      'questionText': "What's your favorite course?",
      'answers': ['Analysis', 'Differential Equations', 'Algebra', 'Topology']
    },
    {
      'questionText': "What's your favorite animal?",
      'answers': ['cat', 'dog', 'rat', 'snake']
    },
    {
      'questionText': "Who's your favorite celebrity?",
      'answers': ['Olamide', 'Wizkid', 'Burna boy', 'Fireboy']
    },
  ];

  var _questionIndex = 0;
  void _resetQuiz(){
    setState(() {
      _questionIndex =0;
    });
    
  }

  // A method
  void _answerQuestion() {
    setState(() {
      _questionIndex += 1;
    });
    print(_questionIndex); 

    if (_questionIndex < _questions.length) {
      print('We have more questions!');
    }
  }

  //A method (An overriden method)
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text(
            'My First Flutter App',
            style: TextStyle(
              fontSize: 30,
              fontWeight: FontWeight.bold,
            ),
          ),
          backgroundColor: Colors.lightGreen,
        ),
        body: _questionIndex < _questions.length
            ? Quiz(
                answerQuestion: _answerQuestion,
                questions: _questions,
                questionIndex: _questionIndex,
              )
            : Result(_resetQuiz),
      ),
    );
  }
}
