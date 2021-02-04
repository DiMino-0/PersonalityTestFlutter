//Packages
import 'package:flutter/material.dart';
//Classes
import './quiz.dart';
import './result.dart';
import './NavDrawer.dart';

void main() => runApp(PerTest());

class PerTest extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _PerTestState();
  }
}

class _PerTestState extends State<PerTest> {
  final _questions = const [
    {
      'questionText': 'What\'s your favorite color?',
      'answers': [
        {'text': 'Black', 'score': 10},
        {'text': 'Red', 'score': 5},
        {'text': 'Green', 'score': 3},
        {'text': 'Blue', 'score': 1},
      ]
    },
    {
      'questionText': 'What\'s your favorite animal?',
      'answers': [
        {'text': 'Rabbit', 'score': 10},
        {'text': 'Snake', 'score': 5},
        {'text': 'Elephant', 'score': 3},
        {'text': 'Lion', 'score': 1},
      ]
    },
    {
      'questionText': 'What\'s your favorite Season?',
      'answers': [
        {'text': 'Winter', 'score': 10},
        {'text': 'Fall', 'score': 5},
        {'text': 'Spring', 'score': 3},
        {'text': 'Summer', 'score': 1},
      ]
    },
    {
      'questionText': 'What\'s your favorite Game?',
      'answers': [
        {'text': 'CSGO', 'score': 10},
        {'text': 'Minecraft', 'score': 5},
        {'text': 'Cold war', 'score': 3},
        {'text': 'R6', 'score': 1},
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
      _questionIndex = _questionIndex + 1;
    });
    if (_questionIndex < _questions.length) {
      print('We have more questions');
    } else {
      print('No more questions');
    }
  }

  @override
  Widget build(BuildContext context) {
    return (MaterialApp(
      theme: ThemeData(
        brightness: Brightness.dark,
        primaryColor: Colors.lightBlue[800],
        accentColor: Colors.cyan[600],
        fontFamily: 'Georgia',
        textTheme: TextTheme(
          headline1: TextStyle(fontSize: 72.0, fontWeight: FontWeight.bold),
          headline6: TextStyle(fontSize: 36.0, fontStyle: FontStyle.italic),
          bodyText2: TextStyle(fontSize: 14.0, fontFamily: 'Hind'),
        ),
      ),
      home: Scaffold(
        drawer: NavDrawer(),
        appBar: AppBar(
          title: Text(
            'Personality Test',
            textAlign: TextAlign.center,
          ),
          actions: [
            IconButton(
              icon: Icon(Icons.settings),
              tooltip: 'Setting Icon',
              onPressed: () {},
            ),
          ],
          backgroundColor: Colors.teal,
          elevation: 50.0,
          brightness: Brightness.dark,
        ),
        body: _questionIndex < _questions.length
            ? Quiz(
                answerQuestion: _answerQuestion,
                questionIndex: _questionIndex,
                questions: _questions,
              )
            : Result(_totalScore, _resetQuiz),
      ),
      debugShowCheckedModeBanner: false,
    ));
  }
}
