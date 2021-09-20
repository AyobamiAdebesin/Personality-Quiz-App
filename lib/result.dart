import 'dart:ui';

import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  //const ({ Key? key }) : super(key: key);

  final resetHandler;

  Result(this.resetHandler);

  @override
  Widget build(BuildContext context) {
    return Center(
        child: Column(
      children: [
        Text(
          'You did it',
          style: TextStyle(
              fontSize: 30,
              fontWeight: FontWeight.bold,
              fontStyle: FontStyle.italic),
          textAlign: TextAlign.center,
        ),
        TextButton(onPressed: resetHandler, child: Text('Restart Quiz!', style: TextStyle(color: Colors.blue)))
      ],
    ));
  }
}















































// import 'package:flutter/material.dart';
// class Result extends StatelessWidget {
  
//   @override
//   Widget build(BuildContext context) {
//     return Center(
//       child: Text("You did it!"),
//     );
//   }
// }