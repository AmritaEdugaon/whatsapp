import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class UpdatesScreen extends StatefulWidget {
  const UpdatesScreen({super.key});

  @override
  State<UpdatesScreen> createState() => _UpdatesScreenState();
}

class _UpdatesScreenState extends State<UpdatesScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Updates",
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
                        "Create channel",
                        style: TextStyle(fontSize: 18),
                      ),
                      const Text(
                        "Status privacy",
                        style: TextStyle(fontSize: 18),
                      ),
                      const Text("Starred", style: TextStyle(fontSize: 18)),
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
              "Status",
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
          ),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              spacing: 5,
              children: [
                SizedBox(width: 7),
                Container(
                  width: 90,
                  height: 130,
                  decoration: BoxDecoration(
                    color: Colors.black54,
                    borderRadius: BorderRadius.circular(20),
                    image: DecorationImage(image:AssetImage("assets/image/img_5.png"),fit: BoxFit.cover,opacity: 0.4)
                  ),
                  child: Stack(
                    children: [
                      Positioned(
                        top: 10,
                        left: 10,
                        child: ClipRRect(
                          borderRadius: BorderRadiusGeometry.circular(100),
                          child: Image.asset(
                            "assets/image/download.jpg",
                            height: 40,
                            width: 40,
                          ),
                        ),
                      ),
                      Stack(
                        children: [
                          Positioned(
                            top: 35,
                            left: 30,
                            child: CircleAvatar(backgroundColor:Colors.green,child:Icon(CupertinoIcons.plus,color: Colors.black,size: 20,),),width: 20,height: 20,
                          ),]
                      ),
                      Positioned(left: 15,top: 105, child: Text("My Status",style: TextStyle(fontWeight: FontWeight.bold,color: Colors.white,fontSize: 12),))
                    ],
                  ),
                ),
                Container(
                  width: 90,
                  height: 130,
                  decoration: BoxDecoration(
                      color: Colors.black54,
                      borderRadius: BorderRadius.circular(20),
                      image: DecorationImage(image:AssetImage("assets/image/img_5.png"),fit: BoxFit.cover,opacity: 0.4)
                  ),
                  child: Stack(
                    children: [
                      Positioned(
                        top: 10,
                        left: 10,
                        child: ClipRRect(
                          borderRadius: BorderRadiusGeometry.circular(100),
                          child: Image.asset(
                            "assets/image/radha.jpg",
                            height: 40,
                            width: 40,
                          ),
                        ),
                      ),
                      Positioned(left: 15,top: 105, child: Text("Radha",style: TextStyle(fontWeight: FontWeight.bold,color: Colors.white,fontSize: 12),))
                    ],
                  ),
                ),
                Container(
                  width: 90,
                  height: 130,
                  decoration: BoxDecoration(
                      color: Colors.black54,
                      borderRadius: BorderRadius.circular(20),
                      image: DecorationImage(image:AssetImage("assets/image/img_4.png"),fit: BoxFit.cover,opacity: 0.4)
                  ),
                  child: Stack(
                    children: [
                      Positioned(
                        top: 10,
                        left: 10,
                        child: ClipRRect(
                          borderRadius: BorderRadiusGeometry.circular(100),
                          child: Image.asset(
                            "assets/image/radha.jpg",fit: BoxFit.cover,
                            height: 40,
                            width: 40,
                          ),
                        ),
                      ),
                      Positioned(left: 2,top: 105, child: Text("Shrikrishnvalbha",style: TextStyle(fontWeight: FontWeight.bold,color: Colors.white,fontSize: 11),))
                    ],
                  ),
                ),
                Container(
                  width: 90,
                  height: 130,
                  decoration: BoxDecoration(
                      color: Colors.black54,
                      borderRadius: BorderRadius.circular(20),
                      image: DecorationImage(image:AssetImage("assets/image/img_6.png"),fit: BoxFit.fill,opacity: 0.4)
                  ),
                  child: Stack(
                    children: [
                      Positioned(
                        top: 10,
                        left: 10,
                        child: ClipRRect(
                          borderRadius: BorderRadiusGeometry.circular(100),
                          child: Image.asset(
                            "assets/image/download (1).jpg",fit: BoxFit.fill,
                            height: 40,
                            width: 40,
                          ),
                        ),
                      ),
                      Positioned(left: 15,top: 105, child: Text("Vrindaradha",style: TextStyle(fontWeight: FontWeight.bold,color: Colors.white,fontSize: 12),))

                    ],
                  ),
                ),
              ],
            ),
          ),

          //channel
          Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 20),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Channel",
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(right: 10),
                      child: Container(
                        width: 60,
                        height: 20,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: CupertinoColors.systemGrey2,
                        ),
                        child: Padding(
                          padding: const EdgeInsets.only(left: 5),
                          child: Text(
                            "Explore",
                            style: TextStyle(fontWeight: FontWeight.bold),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              ListTile(
                leading: CircleAvatar(
                  backgroundImage: AssetImage("assets/image/img_13.png"),
                ),
                title: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text("Shri Hit Radha Keli Kunj",style: TextStyle(fontSize: 14,fontWeight: FontWeight.bold)),
                    Text("08:00am",style: TextStyle(fontSize: 12,fontWeight: FontWeight.bold)),
                  ],
                ),
                subtitle: Row(
                  children: [
                    Icon(Icons.link, color: Colors.blue, size: 20),
                    Text("https://youtu.be/4QP3qRbdpao"),
                  ],
                ),
              ),
              ListTile(
                leading: CircleAvatar(
                  backgroundImage: AssetImage("assets/image/img_9.png"),
                ),
                title: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text("Disha Dream 450+ Batch-2026",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 14),),
                    Text("07:20am", style: TextStyle(fontSize: 12,fontWeight: FontWeight.bold)),
                  ],
                ),
                subtitle: Row(
                  children: [
                    Icon(Icons.mic, color: Colors.green, size: 20),
                    Text("1:09"),
                    SizedBox(width: 195),
                    Container(width: 20,height: 20,
                      decoration: BoxDecoration(shape: BoxShape.circle,color: CupertinoColors.activeGreen,),child: Padding(
                        padding: const EdgeInsets.only(left: 2),
                        child: Text("10",),
                      ),)
                  ],
                ),
              ),
              ListTile(
                leading: CircleAvatar(
                  backgroundImage: AssetImage("assets/image/img_10.png"),
                ),
                title: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text("Learn English|IELTS|Grammar",style: TextStyle(fontSize: 14,fontWeight: FontWeight.bold),),
                    Text("06:00am", style: TextStyle(fontSize: 12,fontWeight: FontWeight.bold)),
                  ],
                ),
                subtitle: Row(
                  children: [
                    Text("🤔Do You Know?"),
                  ],
                ),
              ),
              ListTile(
                leading: CircleAvatar(
                  backgroundImage: AssetImage("assets/image/img_6.png"),
                ),
                title: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text("12 Jyotirlingas of Mahadev",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 14)),
                    Text("Yesterday", style: TextStyle(fontSize: 12,color: CupertinoColors.activeGreen,fontWeight: FontWeight.bold)),
                  ],
                ),
                subtitle: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text("https://youtube.com/shor.."),
                    Container(width: 20,height: 20,
                    decoration: BoxDecoration(shape: BoxShape.circle,color: CupertinoColors.activeGreen,),child: Padding(
                      padding: const EdgeInsets.only(left: 2),
                      child: Padding(
                        padding: const EdgeInsets.only(left: 3),
                        child: Text("20"),
                      ),
                    ),)
                  ],
                ),
              ),
              ListTile(
                leading: CircleAvatar(
                  backgroundImage: AssetImage("assets/image/img_2.png"),
                ),
                title: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text("💛ShreeMad BhagwatGeeta",style: TextStyle(fontSize: 14,fontWeight: FontWeight.bold),),
                    Text("Yesterday", style: TextStyle(fontSize: 12,fontWeight: FontWeight.bold)),
                  ],
                ),
                subtitle: Row(
                  children: [
                    Icon(Icons.photo, size: 20),
                    Text("||श्रीमद् भगवद्गीता||"),
                  ],
                ),
              ),
            ],
          ),
          Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 20),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Find channels to follow",
                      style: TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
              ),
              ListTile(
                leading: CircleAvatar(
                  backgroundImage: AssetImage("assets/image/img_14.png"),
                ),
                title: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text("Krishna Gyan",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 14)),
                  ],
                ),
                subtitle: Row(
                  children: [
                    Text("563k followers"),
                  ],
                ),
                trailing: Opacity(
                  opacity: 0.8,
                   child: Container(width: 80,height: 30,decoration: BoxDecoration(shape: BoxShape.rectangle,
                     borderRadius: BorderRadiusGeometry.circular(20),color: Colors.green[900],),
                     child:const Padding(
                       padding: const EdgeInsets.only(left: 15,top: 5),
                       child: Text("Follow",style: TextStyle(color: Colors.greenAccent,fontSize: 14,fontWeight: FontWeight.bold),),
                     ) ,
                   ),
                )

              ),
              ListTile(
                leading: CircleAvatar(
                  backgroundImage: AssetImage("assets/image/img_11.png"),
                ),
                title: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text("English To Hindi",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 14)),
                  ],
                ),
                subtitle: Row(
                  children: [
                    Text("1.3M followers"),
                  ],
                ),
                trailing: Opacity(
                  opacity: 0.8,
                   child: Container(width: 80,height: 30,decoration: BoxDecoration(shape: BoxShape.rectangle,
                     borderRadius: BorderRadiusGeometry.circular(20),color: Colors.green[900],),
                     child:const Padding(
                       padding: const EdgeInsets.only(left: 15,top: 5),
                       child: Text("Follow",style: TextStyle(color: Colors.greenAccent,fontSize: 14,fontWeight: FontWeight.bold),),
                     ) ,
                   ),
                )

              ),
              ListTile(
                leading: CircleAvatar(
                  backgroundImage: AssetImage("assets/image/img_12.png"),
                ),
                title: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text("Shree Ram Katha",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 14)),
                  ],
                ),
                subtitle: Row(
                  children: [
                    Text("2.5k followers"),
                  ],
                ),
                trailing: Opacity(
                  opacity: 0.8,
                   child: Container(width: 80,height: 30,decoration: BoxDecoration(shape: BoxShape.rectangle,
                     borderRadius: BorderRadiusGeometry.circular(20),color: Colors.green[900],),
                     child:const Padding(
                       padding: const EdgeInsets.only(left: 15,top: 5),
                       child: Text("Follow",style: TextStyle(color: Colors.greenAccent,fontSize: 14,fontWeight: FontWeight.bold),),
                     ) ,
                   ),
                )

              ),
            ],
          ),
        ],
      ),
      floatingActionButton: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          FloatingActionButton(
            mini: true,
            backgroundColor: Colors.white,
            onPressed: () {},
            child: Icon(Icons.edit, color: Colors.black),
          ),
          SizedBox(height: 20),
          FloatingActionButton(
            onPressed: () {},
            backgroundColor: Colors.green,
            child: Icon(Icons.camera_alt, color: Colors.white),
          ),
        ],
      ),
    );
  }
}
