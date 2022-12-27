import 'package:flutter/material.dart';
class Answer extends StatefulWidget {
  Answer(this.answer,this.next) : super();
final String answer;
final Function() next;
  @override
  State<Answer> createState() => _AnswerState();
}

class _AnswerState extends State<Answer> {
  @override
  Widget build(BuildContext context) {

    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          SizedBox(
            height: 10,
          ),
          Container(
            height: 40,
            width: 100,
            decoration: BoxDecoration(
              color: Colors.grey
            ),
            child: TextButton(
              onPressed: widget.next,
                child: Text(widget.answer,style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    color: Colors.pink
                ))),
          ),
        ],
      ),
    );
  }
}
