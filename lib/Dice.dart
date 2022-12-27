import 'dart:math';

import 'package:flutter/material.dart';
class Dice extends StatefulWidget {
  const Dice({Key? key}) : super(key: key);

  @override
  State<Dice> createState() => _DiceState();
}

class _DiceState extends State<Dice> {
  List images=[
    'images/dicce1.jpg',
    'images/dicce2.jpg',
    'images/dicce3.jpg',
    'images/dicce4.jpg',
    'images/dicce5.jpg',
    'images/dicce6.jpg'
  ];
  int left=0;
  int right=1;
  void leftDiceRoll(){
    left=Random().nextInt(6);
    setState(() {
    }); }
    void rightDiceRoll(){
      right=Random().nextInt(6);
      setState(() {
      });
    }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Dice App'),
        centerTitle: true,
      ),
      body: Center(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            InkWell(
              onTap: (){
                leftDiceRoll();
              },
                child: Image(image: AssetImage(images[left]))),
            SizedBox(width: 20,),
            InkWell(
              onTap: (){
                rightDiceRoll();
              },
                child: Image(image: AssetImage(images[right]))),
          ],
        ),
      ),
    );
  }
}
