import 'package:flutter/material.dart';
class ChatNext extends StatefulWidget {
  const ChatNext({Key? key}) : super(key: key);

  @override
  State<ChatNext> createState() => _ChatNextState();
}

class _ChatNextState extends State<ChatNext> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        leading: Icon(Icons.arrow_back_ios_new_outlined,color: Colors.black,),
        title: Text('Amira Ebrahim',style: TextStyle(
          color: Colors.black
        ),),
        centerTitle: true,
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 8.0),
            child: CircleAvatar(
              radius: 20,
              backgroundImage:AssetImage('images/maxresdefault 1.png') ,
            ),
          )
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          children: [
            Row(
              children: [
                CircleAvatar(
                  backgroundImage:AssetImage('images/maxresdefault 1.png') ,
                  radius: 15,
                ),
                SizedBox(width: 10,),
                Container(
                  height: 30,
                  width: 50,
                  decoration: BoxDecoration(
                    color: Colors.grey,
                    borderRadius: BorderRadius.only(topLeft:Radius.circular(10),topRight: Radius.circular(10),bottomRight:Radius.circular(10) )
                  ),
                  child: Center(child: Text('hi')),)
              ],
            ),
            Text('2:45pm',style: TextStyle(color: Colors.grey),),
            SizedBox(height: 30,),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Container(
                  height: 30,
                  width: 50,
                  decoration: BoxDecoration(
                      color: Colors.grey,
                      borderRadius: BorderRadius.only(topLeft:Radius.circular(10),topRight: Radius.circular(10),bottomLeft:Radius.circular(10)  )
                  ),
                  child: Center(child: Text('hi')),),
                SizedBox(width: 10,),
              ],
            ),
            Text('2:45pm',style: TextStyle(color: Colors.grey),),
            Row(
              children: [
                CircleAvatar(
                  backgroundImage:AssetImage('images/maxresdefault 1.png') ,
                  radius: 15,
                ),
                SizedBox(width: 10,),
                Container(
                  height: 30,
                  width: 50,
                  decoration: BoxDecoration(
                      color: Colors.grey,
                      borderRadius: BorderRadius.only(topLeft:Radius.circular(10),topRight: Radius.circular(10),bottomRight:Radius.circular(10) )
                  ),
                  child: Center(child: Text('hi')),)
              ],
            ),
            Text('2:45pm',style: TextStyle(color: Colors.grey),),
            SizedBox(height: 30,),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Container(
                  height: 30,
                  width: 50,
                  decoration: BoxDecoration(
                      color: Colors.grey,
                      borderRadius: BorderRadius.only(topLeft:Radius.circular(10),topRight: Radius.circular(10),bottomLeft:Radius.circular(10)  )
                  ),
                  child: Center(child: Text('hi')),),
                SizedBox(width: 10,),
              ],
            ),
            Row(
              children: [
                CircleAvatar(
                  backgroundImage:AssetImage('images/maxresdefault 1.png') ,
                  radius: 15,
                ),
                SizedBox(width: 10,),
                Container(
                  height: 30,
                  width: 50,
                  decoration: BoxDecoration(
                      color: Colors.grey,
                      borderRadius: BorderRadius.only(topLeft:Radius.circular(10),topRight: Radius.circular(10),bottomRight:Radius.circular(10) )
                  ),
                  child: Center(child: Text('hi')),)
              ],
            ),
            Text('2:45pm',style: TextStyle(color: Colors.grey),),
            SizedBox(height: 30,),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Container(
                  height: 30,
                  width: 50,
                  decoration: BoxDecoration(
                      color: Colors.grey,
                      borderRadius: BorderRadius.only(topLeft:Radius.circular(10),topRight: Radius.circular(10),bottomLeft:Radius.circular(10)  )
                  ),
                  child: Center(child: Text('hi')),),
                SizedBox(width: 10,),
              ],
            ),
            Spacer(),
            Container(
              decoration: BoxDecoration(
                color: Colors.black12,
                borderRadius: BorderRadius.circular(7)
              ),
              height: 60,
              child: Row(
                children: [
                  SizedBox(width: 10,),
                  Icon(Icons.emoji_emotions_outlined),
                  SizedBox(width: 10,),
                  Text('Type message',style: TextStyle(
                    color: Colors.grey
                  ),),
                  Spacer(),
                  Icon(Icons.attach_file,color: Colors.grey,),
                  Icon(Icons.mic,color: Colors.grey,),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
