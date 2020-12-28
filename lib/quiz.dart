import 'package:flutter/material.dart';
import './question.dart';
import './options.dart';

class Quiz extends StatelessWidget {
  List ques;
  var _qIndx;
  Function _tempfun;
  Quiz(this.ques, this._qIndx, this._tempfun);
  @override
  Widget build(BuildContext context) {
    return Container(
        child: Column(
      children: [
        Question(ques[_qIndx]['qTxt']),
        ...(ques[_qIndx]['aTxt'] as List<Map<String, Object>>).map((e) {
          return Option(e['text'], ()=>_tempfun(e['score']));
        }).toList() // toList() is optional
      ],
    ));
  }
}
