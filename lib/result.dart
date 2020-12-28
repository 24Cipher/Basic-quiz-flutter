import 'package:flutter/material.dart';

// ignore: must_be_immutable
class Result extends StatelessWidget {
  Function reset;
  int _total_score;
  Result(this.reset, this._total_score);
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Center(
          child: Column(
        children: [
          Text(
            "Quiz has been completed! Your Score : ${_total_score}",
            style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
          ),
          RaisedButton(child: Text('Retake'), onPressed: reset)
        ],
      )),
    );
  }
}
