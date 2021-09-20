import 'package:flutter/material.dart';

class Answer extends StatelessWidget {
  //const Answer({ Key? key }) : super(key: key);
  final selectHandler;
  final String answerText;

  Answer(this.selectHandler, this.answerText);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 300,
      child: ElevatedButton(
          style: ElevatedButton.styleFrom(
              textStyle: TextStyle(
                fontSize: 15,
              ),
              primary: Colors.lightBlueAccent),
          child: Text(
            answerText,
            style: TextStyle(
              color: Colors.white,
            ),
            textAlign: TextAlign.center,
          ),
          onPressed: selectHandler),
    );
  }
}































































































// import 'package:flutter/material.dart';

// class Answer extends StatelessWidget {
//   final selectHandler;
//   final String answerText;

//   Answer(this.selectHandler, this.answerText);

//   @override
//   Widget build(BuildContext context) { 
//     return Container (
//       width: double.infinity,
//       child:
//       ElevatedButton(
//         style: ElevatedButton.styleFrom(
//           textStyle: TextStyle(
//             color: Colors.yellowAccent,
//             fontSize: 20,
//           ),
//           primary: Colors.blue,
//         ),
//         // style: ButtonStyle(
//         //   backgroundColor: MaterialStateProperty.all(Colors.green),
//         //   foregroundColor: MaterialStateProperty.all(Colors.blue),),
//         onPressed: selectHandler,
//         child: Text(answerText, style: TextStyle(color: Colors.white)),
//       ),
//     );
//   }
// }
