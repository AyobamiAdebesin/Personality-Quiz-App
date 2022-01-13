import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  //const Result({Key? key}) : super(key: key);
  final int resultScore;
  final resetQuizHandler;

  Result({required this.resultScore, required this.resetQuizHandler});

  // A getter is like a method that can never receive any argument
  String get resultPhrase {
    String resultText;
    if (resultScore <= 8) {
      resultText = 'You are innocent!';
    } else if (resultScore <= 12) {
      resultText = 'Pretty likeable!';
    } else if (resultScore <= 16) {
      resultText = 'You are strange!';
    } else {
      resultText = 'You are so bad!';
    }
    return resultText;
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            resultPhrase,
            style: TextStyle(fontSize: 36, fontWeight: FontWeight.bold),
          ),
          SizedBox(
            height: 4, 
          ),
          Text(
            'Your personality score: ${resultScore.toString()}',
            style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold,),
             textAlign: TextAlign.center,
            
          ),
          SizedBox(
            height: 4, 
          ),
          TextButton(
            onPressed: resetQuizHandler,
            child: Text(
              'Restart!',
              style: TextStyle(fontSize: 18),
            ),
          ),
        ],
      ),
    );
  }
}
