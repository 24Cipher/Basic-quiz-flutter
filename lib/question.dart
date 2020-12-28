import 'package:flutter/material.dart';

class Question extends StatelessWidget {
  final String qstext;
  Question(this.qstext);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(15),
      child: Text(
        qstext,
        style: TextStyle(fontSize: 24, fontWeight: FontWeight.w500),
        textAlign: TextAlign.center,
      ),
    );
  }
}
