import 'package:flutter/material.dart';

class Answer extends StatelessWidget {
  // const Answer({ Key? key }) : super(key: key);
  final selectHandler;
  final String answerText;

  Answer({required this.answerText, required this.selectHandler});
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        Container(
          margin: EdgeInsets.symmetric(horizontal: 10),
          child: SizedBox(
            width: 150,
            child: ElevatedButton(
              style: ElevatedButton.styleFrom(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(30),
                ),
                primary: Colors.deepPurpleAccent,
                elevation: 20,
              ),
              child: Text(answerText),
              onPressed: selectHandler,
            ),
          ),
        ),
        // Container(
        //   margin: EdgeInsets.symmetric(horizontal: 10),
        //   child: SizedBox(
        //     width: 150,
        //     child: ElevatedButton(
        //       style: ElevatedButton.styleFrom(
        //         shape: RoundedRectangleBorder(
        //           borderRadius: BorderRadius.circular(30),
        //         ),
        //         primary: Colors.blueGrey,
        //       ),
        //       child: Text(answerText),
        //       onPressed: selectHandler,
        //     ),
        //   ),
        // ),

        // Row(
        //   mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        //   children: [
        //     Container(
        //       margin: EdgeInsets.symmetric(horizontal: 10),
        //       child: SizedBox(
        //         width: 150,
        //         child: ElevatedButton(
        //             style: ElevatedButton.styleFrom(
        //               shape: RoundedRectangleBorder(
        //                 borderRadius: BorderRadius.circular(30),
        //               ),
        //             ),
        //             onPressed: selectHandler,
        //             child: Text(
        //               answerText,
        //               textAlign: TextAlign.center,
        //             )),
        //       ),
        //     )
        //   ],
        // )
      ],
    );
  }
}
