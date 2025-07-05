import 'package:flutter/material.dart';

class ChatsScreen extends StatefulWidget {
  const ChatsScreen({super.key});

  @override
  State<ChatsScreen> createState() => _ChatsScreenState();
}

class _ChatsScreenState extends State<ChatsScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "WhatsApp",
          style: TextStyle(fontSize: 22, fontWeight:FontWeight.bold,color: Colors.green),
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 20),
            child: Icon(Icons.qr_code_scanner),
          ),
          Icon(Icons.camera_alt_outlined),
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
                      const Text("New group", style: TextStyle(fontSize: 18)),
                      const Text(
                        "New community",
                        style: TextStyle(fontSize: 18),
                      ),
                      const Text(
                        "New broadcast",
                        style: TextStyle(fontSize: 18),
                      ),
                      const Text(
                        "Linked devices",
                        style: TextStyle(fontSize: 18),
                      ),
                      const Text("Starred", style: TextStyle(fontSize: 18)),
                      const Text("Payments", style: TextStyle(fontSize: 18)),
                      const Text("Read all", style: TextStyle(fontSize: 18)),
                      const Text("Setting", style: TextStyle(fontSize: 18)),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
      //body
      body: ListView(
        children: [
          Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 10,right: 10),
                child: SearchBar(
                  leading:Icon(Icons.search),hintText: "Ask Meta AI or Search",
                  padding: WidgetStatePropertyAll(EdgeInsets.only(left: 20,right: 20 )),
                  elevation: WidgetStatePropertyAll(0),
                ),
              ),
              Column(children: [ListTile(
                leading: Icon(Icons.archive_outlined),title: Text("Archived"),
              )],),
              Column(
                children: [
                  ListTile(
                    leading: CircleAvatar(
                      backgroundImage: AssetImage("assets/image/radha.jpg"),
                    ),
                    title: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text("Radha"),
                        Text("1:12pm", style: TextStyle(fontSize: 12)),
                      ],
                    ),
                    subtitle: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text("Rajeswari,Ramya"),
                        Container(
                          height: 20,
                          width: 20,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(100),
                            color: Colors.green,
                          ),
                          child: Padding(
                            padding: const EdgeInsets.only(left: 6),
                            child: Text(
                              "2",
                              style: TextStyle(color: Colors.white),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              Column(
                children: [
                  ListTile(
                    leading: CircleAvatar(
                      backgroundImage: AssetImage("assets/image/download.jpg"),
                    ),
                    title: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text("💛Krishnmatradhidevta💛"),
                        Text("08:00am", style: TextStyle(fontSize: 12)),
                      ],
                    ),
                    subtitle: Row(children: [Icon(Icons.done_all,color: Colors.blue,size: 20,),Text("https://youtube.com/shor.."),],),
                  ),
                ],
              ),
              Column(
                children: [
                  ListTile(
                    leading: CircleAvatar(
                      backgroundImage: AssetImage(
                        "assets/image/radhekrishna.jpg",
                      ),
                    ),
                    title: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text("💫Sarwadha💫"),
                        Text("07:52am", style: TextStyle(fontSize: 12)),
                      ],
                    ),
                    subtitle: Row(children: [Icon(Icons.photo), Text("Sarwvandha,Vrindavanbiharini")]),
                  ),
                ],
              ),
              Column(
                children: [
                  ListTile(
                    leading: CircleAvatar(
                      backgroundImage: AssetImage(
                        "assets/image/download (1).jpg",
                      ),
                    ),
                    title: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text("VrindaRadha"),
                        Text("07:32am", style: TextStyle(fontSize: 12)),
                      ],
                    ),
                    subtitle: Text("Rama,Asheshgopimandalpujita"),
                  ),
                ],
              ),
              Column(
                children: [
                  ListTile(
                    leading: CircleAvatar(
                      backgroundImage: AssetImage(
                        "assets/image/harekrishn.jpg",
                      ),
                    ),
                    title: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text("Stya"),
                        Text("07:02am", style: TextStyle(fontSize: 12)),
                      ],
                    ),
                    subtitle: Text("Styapara,Styabhama"),
                  ),
                ],
              ),
              Column(
                children: [
                  ListTile(
                    leading: CircleAvatar(
                      backgroundImage: AssetImage("assets/image/radha.jpg"),
                    ),
                    title: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text("Shrikrishnvalbha"),
                        Text("07:42am", style: TextStyle(fontSize: 12)),
                      ],
                    ),
                    subtitle: Text("vrishbhanusuta,Gopi,Mulprakrti"),
                  ),
                ],
              ),
              Column(
                children: [
                  ListTile(
                    leading: CircleAvatar(
                      backgroundImage: AssetImage("assets/image/download.jpg"),
                    ),
                    title: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text("Eswari"),
                        Text("04/05/2025", style: TextStyle(fontSize: 12)),
                      ],
                    ),
                    subtitle: Text("Gandharwa,Radhika,Ramya."),
                  ),
                ],
              ),
              Column(
                children: [
                  ListTile(
                    leading: CircleAvatar(
                      backgroundImage: AssetImage(
                        "assets/image/download (1).jpg",
                      ),
                    ),
                    title: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text("Rukamni"),
                        Text("04/05/25", style: TextStyle(fontSize: 12)),
                      ],
                    ),
                    subtitle: Text("Prmwshwari,Pratartara,Purna"),
                  ),
                ],
              ),
              Column(
                children: [
                  ListTile(
                    leading: CircleAvatar(
                      backgroundImage: AssetImage(
                        "assets/image/download.jpg",
                      ),
                    ),
                    title: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text("Purnchandravibhanna"),
                        Text("04/05/25", style: TextStyle(fontSize: 12)),
                      ],
                    ),
                    subtitle: Text("Bhuktimuktiparda"),
                  ),
                ],
              ),
              Column(
                children: [
                  ListTile(
                    leading: CircleAvatar(
                      backgroundImage: AssetImage(
                        "assets/image/download.jpg",
                      ),
                    ),
                    title: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text("Bhawvyadhi"),
                        Text("04/05/25", style: TextStyle(fontSize: 12)),
                      ],
                    ),
                    subtitle: Text("Vinashini💕"),
                  ),
                ],
              ),

            ],
          ),
        ],
      ),
      floatingActionButton: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          //ClipRect(clipBehavior: Clip.hardEdge,child: Image.asset("assets/image/ai.jpg",fit:BoxFit.fill,),),
          FloatingActionButton(
            onPressed: () {},
             mini: true,
            child: Image.asset("assets/image/img.png",height: 65,width: 65,),
             backgroundColor: Colors.white54,
          ),
          SizedBox(height: 20),
          FloatingActionButton(
            onPressed: () {},
            backgroundColor: Colors.green,
            child: Icon(Icons.add_box_rounded, color: Colors.white),
          ),
        ],
      ),
    );
  }
}
