import 'package:flutter/material.dart';
import 'package:session3/Dice.dart';
import 'package:session3/bmiApp/home.dart';
import 'package:session3/other/chat.dart';
import 'package:session3/other/chatNext.dart';
import 'package:session3/other/login.dart';
import 'package:session3/other/navigationBar.dart';
import 'package:session3/next.dart';
import 'package:session3/quizApp/quiz.dart';
import 'package:session3/other/sliverwidget.dart';
import 'package:session3/other/yisit.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      debugShowCheckedModeBanner: false,
      home: HomeScreen(),
    );
  }
}

