import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  final int resultScore;
  final Function resetHandler;

  Result(this.resultScore, this.resetHandler);

  String get resultPhrase {
    String resultText;
    if (resultScore <= 4) {
      resultText =
          'The choices you made are indicative of a kind and caring person, you most likely do not have an issue making friends';
    } else if (resultScore <= 12) {
      resultText =
          'You are a compassionate person who cares about what they believe in';
    } else if (resultScore <= 20) {
      resultText =
          'Just a average person content to stay with the crowd and go with what life gives you'; //Needed to use double quote in order to use single.
    } else {
      resultText =
          'Stubborn, most likely ignorant. Your parents never gave you dino nugs and now you have become evil.';
    }
    return resultText;
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: MediaQuery.of(context).size.height / 4,
      margin: EdgeInsets.all(10),
      decoration: BoxDecoration(
        color: Colors.grey,
        borderRadius: BorderRadius.only(
            topRight: Radius.circular(20.0),
            bottomRight: Radius.circular(20.0),
            topLeft: Radius.circular(20.0),
            bottomLeft: Radius.circular(20.0)),
      ),
      child: Column(
        children: <Widget>[
          Text(
            resultPhrase,
            style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
            textAlign: TextAlign.center,
          ),
          FlatButton(
            child: Text(
              'Restart Quiz',
              style: TextStyle(
                  fontSize: 25,
                  fontWeight: FontWeight.bold,
                  color: Colors.black),
            ),
            color: Colors.transparent,
            onPressed: resetHandler,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(18.0),
              side: BorderSide(color: Colors.black),
            ),
          ),
        ],
      ),
    );
  }
}
