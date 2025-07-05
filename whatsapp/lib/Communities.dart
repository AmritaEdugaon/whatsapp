import 'package:flutter/material.dart';

class CommunitiesScreen extends StatefulWidget {
  const CommunitiesScreen({super.key});

  @override
  State<CommunitiesScreen> createState() => _CommunitiesScreenState();
}

class _CommunitiesScreenState extends State<CommunitiesScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(child: Scaffold(
      appBar: AppBar(
        title: Text(
          "Communities",
          style: TextStyle(fontSize: 22, color: Colors.black),
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 20),
            child: Icon(Icons.qr_code_scanner),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 5, right: 10),
            child: PopupMenuButton(
              itemBuilder: (context) => [
                PopupMenuItem(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    spacing: 20,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text("Settings", style: TextStyle(fontSize: 18)),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),

      body: SingleChildScrollView(
        child: Center(
          child: Column(children: [
            SizedBox(height: 60,),
            Image.asset("assets/image/cm.jpg"),
            SizedBox(height: 20,),
            Text("Stay connected with a \n community",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold,),textAlign: TextAlign.center,),
            SizedBox(height: 20,),
            Text("Communities bring members togather in \n topic-basic groups, and make it easy to get \n admin announcements, Any community you're \n added to will appear here.",textAlign: TextAlign.center,),
            SizedBox(height: 40,),
            SizedBox(
              height: 40,
              width: 320,
              child: ElevatedButton(style:ButtonStyle(backgroundColor: WidgetStatePropertyAll(Colors.green[500])),
                  onPressed: () {
        
              }, child: Text("start your community",style: TextStyle(fontSize: 16,color: Colors.black),) ),
            ),
            SizedBox(height: 40,),
            Text("Tap on the Chats tab to create a new \n community.",textAlign: TextAlign.center,)
          ],),
        ),
      ),
    ));
  }
}
