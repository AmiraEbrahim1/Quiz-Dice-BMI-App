import 'package:flutter/material.dart';
class ResultBmi extends StatelessWidget {
  ResultBmi(this.result,this.age,this.gender) : super();
final double result;
final int age;
final bool gender;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Column(
        children: [
          Text('Result is:$result'),
          Text('Age is :$age'),
          Text('Gender is:${gender==true?'Male':'Female'}'),
        ],
      )
    );
  }
}
