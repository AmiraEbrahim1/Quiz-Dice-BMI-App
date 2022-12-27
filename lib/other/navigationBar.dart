import 'package:flutter/material.dart';
import 'package:session3/other/chat.dart';
import 'package:session3/other/chatNext.dart';
class Navigation extends StatefulWidget {
  const Navigation({Key? key}) : super(key: key);

  @override
  State<Navigation> createState() => _NavigationState();
}

class _NavigationState extends State<Navigation> {
  int currentScreen = 0;

  List<Widget> itemsScreens = [
    const Chat(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        elevation: 8.0,
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.mic_none),
            label: 'chats',
          ),
          BottomNavigationBarItem(
            icon:Icon(Icons.video_camera_back),
            label: 'calls',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.people_outlined),
            label: 'peaple',
          ),
        ],
        onTap: (index){
          setState(() {
            currentScreen = index;
          });
        },
        currentIndex: currentScreen,
        backgroundColor: Colors.white,
        unselectedItemColor: Colors.grey,
        selectedItemColor: Colors.pink,
      ),
      body: itemsScreens[currentScreen],
    );
  }
}
