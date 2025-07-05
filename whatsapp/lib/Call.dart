import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CallScreen extends StatefulWidget {
  const CallScreen({super.key});

  @override
  State<CallScreen> createState() => _CallScreenState();
}

class _CallScreenState extends State<CallScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Call",
          style: TextStyle(fontSize: 22, color: Colors.black),
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 20),
            child: Icon(Icons.qr_code_scanner),
          ),
          Icon(Icons.search),
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
                      const Text(
                        "Clear call log",
                        style: TextStyle(fontSize: 18),
                      ),
                      const Text("Settings", style: TextStyle(fontSize: 18)),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
      body: ListView(
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 20),
            child: Text(
              "Favourites",
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
          ),
          SizedBox(height: 10,),
          Padding(
            padding: const EdgeInsets.only(left: 15),
            child: Row(
              children: [
                Icon(CupertinoIcons.heart_circle_fill,color: Colors.green,size: 50,),
                SizedBox(width: 10,),
                Text("Add favourite",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 16),),
              ],
            ),
          ),
          SizedBox(height: 20,),
          Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 20),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Recent",
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
              ),

              ListTile(
                leading: CircleAvatar(
                  backgroundImage: AssetImage("assets/image/radha.jpg"),
                ),
                title: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text("Radha",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 14)),
                  ],
                ),
                subtitle: Row(
                  children: [
                    Icon(Icons.call_made_outlined,color: Colors.green,),
                    Text("Yesterday,4:12pm"),
                  ],
                ),
                trailing: Icon(CupertinoIcons.video_camera,size: 30,color: Colors.black,),

              ),
              ListTile(
                leading: CircleAvatar(
                  backgroundImage: AssetImage("assets/image/radha.jpg"),
                ),
                title: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text("Radha",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 14,color: Colors.red)),
                  ],
                ),
                subtitle: Row(
                  children: [
                    Icon(Icons.call_received_sharp,color: Colors.red,),
                    Text("Yesterday,4:10pm"),
                  ],
                ),
                trailing: Icon(CupertinoIcons.video_camera,size: 30,color: Colors.black,),

              ),
              ListTile(
                leading: CircleAvatar(
                  backgroundImage: AssetImage("assets/image/download (1).jpg"),
                ),
                title: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text("VridaRadha",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 14)),
                  ],
                ),
                subtitle: Row(
                  children: [
                    Icon(Icons.call_made_outlined,color: Colors.green,),
                    Text("Yesterday,2:00pm"),
                  ],
                ),
                trailing: Icon(CupertinoIcons.phone_fill,size: 30,color: Colors.black,),

              ),
              ListTile(
                leading: CircleAvatar(
                  backgroundImage: AssetImage("assets/image/download (1).jpg"),
                ),
                title: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text("VridaRadha",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 14)),
                  ],
                ),
                subtitle: Row(
                  children: [
                    Icon(Icons.call_made_outlined,color: Colors.green,),
                    Text("Yesterday,1:00pm"),
                  ],
                ),
                trailing: Icon(CupertinoIcons.phone_fill,size: 30,color: Colors.black,),

              ),
              ListTile(
                leading: CircleAvatar(
                  backgroundImage: AssetImage("assets/image/download.jpg"),
                ),
                title: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text("Eswari(2)",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 14)),
                  ],
                ),
                subtitle: Row(
                  children: [
                    Icon(Icons.call_made_outlined,color: Colors.green,),
                    Text("25 June,6:00pm"),
                  ],
                ),
                trailing: Icon(CupertinoIcons.video_camera,size: 30,color: Colors.black,),

              ),
            ],
          ),
        ],
      ),
    );
  }
}
