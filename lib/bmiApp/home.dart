import 'dart:math';

import 'package:flutter/material.dart';
import 'package:session3/bmiApp/result.dart';
import 'package:session3/quizApp/result.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  bool isMale=true;
  double _value=20;
  int age=1;
  int weight=1;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Column(
        children: [
          Expanded(
            child: Container(
              child: Row(
                children: [
                  InkWell(
                    child: Container(
                      decoration: BoxDecoration(
                        color:isMale==false? Colors.grey:Colors.pink
                      ),
                      child:Column(
                        children: [
                          Image(image: AssetImage('images/maxresdefault 1.png')),
                          Text('Male'),
                        ],
                      ) ,
                    ),
                    onTap: (){
                      setState(() {
                        isMale=true;
                      });
                    },
                  ),
                  InkWell(
                    child: Container(
                      decoration: BoxDecoration(
                          color:isMale==true? Colors.grey:Colors.pink
                      ),
                      child:Column(
                        children: [
                          Image(image: AssetImage('images/maxresdefault 1.png')),
                          Text('Female'),
                        ],
                      ) ,
                    ),
                    onTap: (){
                      setState(() {
                        isMale=false;
                      });
                    },
                  ),
                ],
              ),
            ),
          ),
          Expanded(child: Container(
            child: Column(
              children: [
                Text('height'),
                Text('${_value.round() }cm'),
                Slider(
                  min: 0.0,
                    max: 200.0,
                    value: _value,
                    onChanged:(value){
                      setState(() {
                        _value=value;
                      });
                    })
              ],
            ),
          )),
          Expanded(
            child: Container(
              child: Row(
                children: [
                  Container(
                    decoration: BoxDecoration(
                        color:isMale==false? Colors.grey:Colors.pink
                    ),
                    child:Column(
                      children: [
                        Text('AGE'),
                        Text('$age'),
                        Row(
                          children: [
                            FloatingActionButton(
                                onPressed: (){
                                  setState(() {
                                    if(age==1){
                                      age=1;
                                    }else
                                    {age--;}
                                  });
                                },
                              child: Icon(Icons.remove),
                              mini: true,
                             // heroTag: 'ageMinus',
                            ),
                            FloatingActionButton(
                              onPressed: (){
                                setState(() {
                                  age++;
                                });
                              },
                              child: Icon(Icons.add),
                              mini: true,
                              // heroTag: 'ageMinus',
                            )
                          ],
                        )
                      ],
                    ) ,
                  ),
                  SizedBox(width: 20,),
                  Container(
                    decoration: BoxDecoration(
                        color:isMale==false? Colors.grey:Colors.pink
                    ),
                    child:Column(
                      children: [
                        Text('Weight'),
                        Text('$weight'),
                        Row(
                          children: [
                            FloatingActionButton(
                              onPressed: (){
                                setState(() {
                                  if(weight==1){
                                    weight=1;
                                  }else
                                  {weight--;}
                                });
                              },
                              child: Icon(Icons.remove),
                              mini: true,
                              // heroTag: 'ageMinus',
                            ),
                            FloatingActionButton(
                              onPressed: (){
                                setState(() {
                                  weight++;
                                });
                              },
                              child: Icon(Icons.add),
                              mini: true,
                              // heroTag: 'ageMinus',
                            )
                          ],
                        )
                      ],
                    ) ,
                  ),
                ],
              ),
            ),
          ),
          TextButton(onPressed:(){
            double  result = weight / pow(_value / 100, 2);
            Navigator.push(context,MaterialPageRoute(builder:(context) =>ResultBmi(result,  age, isMale),) );
          }, child: Text('Calculate'))
        ],
      ),
    );
  }
}
