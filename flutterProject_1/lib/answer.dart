//packages
import 'package:flutter/material.dart';

class Answer extends StatelessWidget {
  final Function selectHandler;
  final String answerText;

  Answer(this.selectHandler, this.answerText);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      margin: EdgeInsets.all(30),
      // decoration: BoxDecoration(
      //   boxShadow: <BoxShadow>[
      //     BoxShadow(
      //       spreadRadius: 4,
      //       color: Colors.blueGrey.withOpacity(0.3),
      //       blurRadius: 3,
      //       offset: Offset(2, 2),
      //     ),
      //   ],
      // ),
      child: RaisedButton(
        color: Colors.blue[800],
        textColor: Colors.white,
        child: Text(
          answerText,
          style: TextStyle(
            fontSize: 36,
            fontWeight: FontWeight.bold,
          ),
        ),
        onPressed: selectHandler,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(18.0),
          side: BorderSide(color: Colors.black),
        ),
      ),
    );
  }
}

//hi there
