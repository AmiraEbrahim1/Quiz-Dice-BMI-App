import 'package:flutter/material.dart';
class Result extends StatefulWidget {
   Result(this.result,this.reset) : super();
final String result;
final Function() reset;
  @override
  State<Result> createState() => _ResultState();
}

class _ResultState extends State<Result> {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          SizedBox(
            height: 30,
          ),
          Text(widget.result,style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20,color: Colors.pink),),
          SizedBox(height: 20,),
          Container(
            height: 40,
            width: 100,
            decoration: BoxDecoration(
              color: Colors.grey
            ),
            child: TextButton(onPressed:widget.reset,
                child:Text('reset',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20,color: Colors.pink))
            ),
          )
        ],
      ),
    );
  }
}
