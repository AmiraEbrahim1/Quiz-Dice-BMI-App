import 'package:flutter/material.dart';
import 'package:session3/quizApp/answers.dart';
import 'package:session3/quizApp/question.dart';
import 'package:session3/quizApp/result.dart';
class Quiz extends StatefulWidget {
  const Quiz({Key? key}) : super(key: key);

  @override
  State<Quiz> createState() => _QuizState();
}

class _QuizState extends State<Quiz> {
  List <Map<String,Object>>questions=[
    {
      'qText':'what is your fav color?',
      'answer':[
        {'textanswer':'black','score':10},
        {'textanswer':'blue','score':20},
        {'textanswer':'pink','score':30}
      ]
    },
    {
      'qText':'what is your fav animal?',
      'answer':[
        {'textanswer':'cat','score':10},
        {'textanswer':'dog','score':20},
        {'textanswer':'rat','score':30}
      ]
    },
  ];
int index=0;
int totalScore=0;
void next(int score){
  setState(() {
    index+=1;
    totalScore+=score;
    print(index);
    print(totalScore);
  });
}
void reset (){
 setState(() {
   index=0;
   totalScore=0;
 });
}
String result='';
String scoreResult(){
  if(totalScore>=50){
   return'awesome';
  }else if(totalScore<50&&totalScore>=30){
    return'good';
  }else{
    return'bad';
  }
}
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Quiz App'),
      ),
      body:index<questions.length? Column(
        children: [
          SizedBox(
            height: 20,
          ),
          Question(questions[index]['qText'].toString()),
         ...(questions[index]['answer'] as List).map((answer){
          return Answer(answer['textanswer'],()=>next(answer['score']));
         }).toList()
        ],
      ):Result(scoreResult(),reset),
    );
  }
}
