import 'package:flutter/material.dart';
class Question extends StatefulWidget {
   Question(this.ques) : super();
final String ques;
  @override
  State<Question> createState() => _QuestionState();
}

class _QuestionState extends State<Question> {
  @override
  Widget build(BuildContext context) {
    return Text(widget.ques,style: TextStyle(
      fontSize: 30,
      fontWeight: FontWeight.bold,
      color: Colors.pink
    ),);
  }
}
