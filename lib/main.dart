import 'package:flutter/material.dart';
import 'package:flutter_first_course_app/quiz.dart';
import 'package:flutter_first_course_app/result.dart';
import './question.dart';
import './options.dart';

// New style of writing a func
void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _MyAppState();
  }
}

class _MyAppState extends State<MyApp> {
  var _qIndx = 0;
  var _total_score = 0;
  static const ques = [
    {
      'qTxt': 'What\'s your favourite IDE for development?',
      'aTxt': [
        {'text': 'VsCode', 'score': 9},
        {'text': 'Sublime Text 3', 'score': 7},
        {'text': 'Atom', 'score': 8},
        {'text': 'Vim', 'score': 10}
      ]
    },
    {
      'qTxt': 'What\'s your web-tech stack?',
      'aTxt': [
        {'text': 'MEAN', 'score': 9},
        {'text': 'MERN', 'score': 10},
        {'text': 'MEDN', 'score': 7},
        {'text': 'MEVN', 'score': 8}
      ]
    },
    {
      'qTxt': 'What\'s your preffered app based framework?',
      'aTxt': [
        {'text': 'React native', 'score': 10},
        {'text': 'Flutter', 'score': 9},
        {'text': 'None', 'score': 0},
        {'text': 'Both', 'score': 10}
      ]
    },
    {
      'qTxt': 'Which type of a person you\'re?',
      'aTxt': [
        {'text': 'Night', 'score': 9},
        {'text': 'Morning', 'score': 7},
        {'text': 'Never Sleeps', 'score': 10},
        {'text': 'None', 'score': 0}
      ]
    }
  ];

  void _tempfun(int score) {
    _total_score += score;
    setState(() {
      _qIndx++;
    });
    print(_qIndx);
  }

  void reset() {
    setState(() {
      _qIndx = 0;
      _total_score = 0;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
          appBar: AppBar(
            title: Text('Cipher Codes!'),
          ),
          body: _qIndx < ques.length
              ? Quiz(ques, _qIndx, _tempfun)
              : Result(reset, _total_score)),
    );
  }
}
