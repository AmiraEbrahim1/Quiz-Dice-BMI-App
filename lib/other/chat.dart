import 'package:flutter/material.dart';
class Chat extends StatefulWidget {
  const Chat({Key? key}) : super(key: key);

  @override
  State<Chat> createState() => _ChatState();
}

class _ChatState extends State<Chat> {
  @override
  Widget build(BuildContext context) {
    double height=MediaQuery.of(context).size.height;
    return Scaffold(
      backgroundColor: Colors.white24,
      body: SafeArea(child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 15.0),
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 15.0),
              child: Row(
                children: [
                  Text('Messages',style: TextStyle(
                    fontSize: 30,
                    fontWeight: FontWeight.bold,
                    color: Colors.pink
                  ),),
                  Spacer(),
                  Icon(Icons.more_vert,size: 30,color: Colors.pink,)
                ],
              ),
            ),
            Container(
              height:height*.1 ,
              decoration: BoxDecoration(
              ),
              child:ListView.separated(
                scrollDirection: Axis.horizontal,
                  itemBuilder: (context,index)=>CircleAvatar(
                    radius: 30,
                    backgroundImage:  AssetImage('images/maxresdefault 1.png'),
                  ),
                  separatorBuilder: (context,index)=>SizedBox(width: 15,),
                  itemCount: 7)
            ),
            SizedBox(height: 12,),
            Container(
              height: height*.07,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(20)
              ),
              child: Row(
                children: [
                  SizedBox(width: 7,),
                  Icon(Icons.search,color: Colors.grey,),
                  Text('Search',style: TextStyle(
                    color: Colors.grey
                  ),)
                ],
              ),
            ),
            SizedBox(height: 12,),
            Expanded(
              child: Container(
                  decoration: BoxDecoration(
                  ),
                  child:ListView.separated(
                    shrinkWrap: true,
                      itemBuilder: (context,index)=>ListTile(
                        trailing:Text('2:30pm',style: TextStyle(
                          fontWeight: FontWeight.bold,
                            color: Colors.grey
                        ),) ,
                        title: Text('Amira Ebrahom',style: TextStyle(fontWeight: FontWeight.bold),),
                       subtitle:Text('Really?',style: TextStyle(
                         fontWeight: FontWeight.bold,
                         color: Colors.grey
                       ),) ,
                        leading: CircleAvatar(
                          radius: 30,
                          backgroundImage:  AssetImage('images/maxresdefault 1.png'),
                        ),
                      ),
                      separatorBuilder: (context,index)=>SizedBox(width: 15,),
                      itemCount: 20)
              ),
            ),
          ],
        ),
      )),
    );
  }
}
