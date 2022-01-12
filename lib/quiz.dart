import 'package:flutter/material.dart';
import 'question.dart';
import 'answer.dart';

class Quiz extends StatelessWidget {
  //const Quiz({Key? key}) : super(key: key);

  final answerquestion;
  final List<Map<String, Object>> questions;
  final int questionIdx;

  Quiz(
      {required this.answerquestion,
      required this.questions,
      required this.questionIdx});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Question(
          (questions[questionIdx]['questionText']).toString(),
        ),
        ...(questions[questionIdx]['answers'] as List<Map<String, Object>>)
            .map((answer) => Answer(
                selectHandler: () => answerquestion(answer['score']),
                answerText: answer['text'] as String))
            .toList(),
      ],
    );
  }
}
