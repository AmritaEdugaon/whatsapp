import 'package:flutter/material.dart';
import 'package:whatsapp/Call.dart';
import 'package:whatsapp/Chats.dart';
import 'package:whatsapp/Communities.dart';
import 'package:whatsapp/Updates.dart';

class WhatsappScreen extends StatefulWidget {
  const WhatsappScreen({super.key});

  @override
  State<WhatsappScreen> createState() => _WhatsappScreenState();
}

class _WhatsappScreenState extends State<WhatsappScreen> {
  List<Widget>Screen=[
    ChatsScreen(),
    UpdatesScreen(),
    CommunitiesScreen(),
    CallScreen(),
  ];
  int seclectedIndex=0;

  void item(int index){
    setState(() {
      seclectedIndex=index;
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Screen[seclectedIndex],
      bottomNavigationBar:
      BottomNavigationBar(
        selectedItemColor: Colors.green,
        unselectedItemColor: Colors.black54,
        type: BottomNavigationBarType.fixed,
        unselectedFontSize: 12,
        items: [
          BottomNavigationBarItem(
            icon: Badge(child: Icon(Icons.chat, color: Colors.black, size: 25)), label:"Chats",),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.change_circle_outlined,
              color: Colors.black,
              size: 25,
            ),
            label: "Updates",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.groups, color: Colors.black, size: 25),
            label: "Communities",
          ),
          BottomNavigationBarItem(
            icon: Icon(
                Icons.call_outlined, color: Colors.black, size: 25),
            label: "Calls",
          ),
        ],
        onTap: item,
        currentIndex: seclectedIndex,
      ),
    );
  }
}
