import 'package:flutter/material.dart';

class Option extends StatelessWidget {
  final String choices;
  final Function state;
  Option(this.choices, this.state);
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      padding: EdgeInsets.only(left: 25, right: 25),
      child: RaisedButton(
        child: Text(choices),
        textColor: Colors.white,
        onPressed: state,
        color: Colors.blue,
      ),
    );
  }
}
