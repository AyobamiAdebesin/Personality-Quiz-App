import 'package:flutter/material.dart';

//A widget that the holds the question widget

class Question extends StatelessWidget {
  // const Question({ Key? key }) : super(key: key);

  final String questionText;

  Question(this.questionText);

  @override
  Widget build(BuildContext context) {
    return Container(
        width: double.infinity,
        margin: EdgeInsets.all(10),
        child: Text(
          questionText,
          style: TextStyle(
            fontSize: 20,
          ),
          textAlign: TextAlign.center,
        ));
  }
} 





































































// import 'package:flutter/material.dart';

// class Question extends StatelessWidget {
//   final String questionText;

//   //Create a constructor
//   Question(this.questionText);

//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       width: double.infinity,
//       margin: EdgeInsets.all(10),
//       child: Text(
//         questionText,
//         style: TextStyle(
//           fontSize: 25,
//         ),
//         textAlign: TextAlign.center,
//       ),
//     );
//   }
// }

// enum MyData {
//   name,
//   age,
//   level,
// }
