import 'package:flutter/material.dart';

///  1. Text추가
///  2. Text Style 추가 
///    2,1 Container
///    2.2 width
///    2.3 child
class Question extends StatelessWidget {
  final String questionText;

  Question(this.questionText);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      margin: EdgeInsets.all(10),
      child: Text(
        questionText,
        style: TextStyle(fontSize: 28),
        textAlign: TextAlign.center,
      ),
    );
  }
}
