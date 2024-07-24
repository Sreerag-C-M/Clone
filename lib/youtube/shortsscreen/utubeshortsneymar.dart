import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

import '../video/shortsvideoneymar.dart';

main() {
  runApp(MaterialApp(
    home: UtubeShortsNeymar(),
  ));
}

class UtubeShortsNeymar extends StatefulWidget {
  const UtubeShortsNeymar({super.key});

  @override
  State<UtubeShortsNeymar> createState() => _UtubeShortsNeymarState();
}

class _UtubeShortsNeymarState extends State<UtubeShortsNeymar> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: Colors.black,
        actions: [
          Icon(
            Icons.search,
            color: Colors.white,
            size: 35,
          ),
          Icon(
            Icons.more_vert,
            color: Colors.white,
            size: 35,
          ),
        ],
      ),
      body: Stack(
        children: [
          Container(
            height: 750,
            color: Colors.black,
          ),
            Container(child: VideoPlayerNeymarEg(),),
          Positioned(
            left: 350,
            top: 350,
            child: Column(
              children: [
                Column(
                  children: [
                    Icon(
                      Icons.thumb_up,
                      color: Colors.white,
                      size: 35,
                    ),
                    Text(
                      "2.3M",
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                          fontSize: 15),
                    )
                  ],
                ),
                SizedBox(
                  height: 30,
                ),
                Column(
                  children: [
                    Icon(
                      Icons.thumb_down,
                      color: Colors.white,
                      size: 35,
                    ),
                    Text(
                      "Dislike",
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                          fontSize: 15),
                    )
                  ],
                ),
                SizedBox(
                  height: 30,
                ),
                Column(
                  children: [
                    Icon(
                      Icons.comment,
                      color: Colors.white,
                      size: 35,
                    ),
                    Text(
                      "978",
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                          fontSize: 15),
                    )
                  ],
                ),
                SizedBox(
                  height: 30,
                ),
                Column(
                  children: [
                    Icon(
                      Icons.share,
                      color: Colors.white,
                      size: 35,
                    ),
                    Text(
                      "Share",
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                          fontSize: 15),
                    )
                  ],
                ),
                SizedBox(height: 30,),
                CircleAvatar(
                  child: Image.asset(
                    "assets/image/Anime/nezukochwaan.png",
                    fit: BoxFit.fill,
                  ),
                ),
              ],
            ),
          ),
          Positioned(
            top: 600,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    CircleAvatar(
                      child: Image.asset(
                        "assets/image/Anime/nezukochwaan.png",
                        fit: BoxFit.fill,
                      ),
                    ),
                    SizedBox(
                      width: 15,
                    ),
                    Text("@nezuko",
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            color: Colors.white,
                            fontSize: 17)),
                    SizedBox(
                      width: 15,
                    ),
                    ClipRRect(
                      borderRadius: BorderRadius.circular(20),
                      child: Container(
                        width: 100,
                        height: 40,
                        color: Colors.white,
                        child: Center(child: Text("Subscribe",style: TextStyle(fontWeight: FontWeight.bold,color: Colors.black,fontSize: 15))),
                      ),
                    )
                  ],
                ),
                SizedBox(height: 10,),
                Row(children: [
                  Icon(Icons.play_arrow,color: Colors.white,),
                  SizedBox(width: 6,),
                  Text("Neymar the skill full player is on the ground...",style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold))
                ],),
                SizedBox(height: 10,),
                Padding(
                  padding: const EdgeInsets.only(right: 220),
                  child: Text("Neymar | ☠️  #neymarjr",style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 18)),
                ),
                SizedBox(height: 10,),
                Row(children: [
                  Icon(CupertinoIcons.double_music_note,color: Colors.white,),
                  SizedBox(width: 10,),
                  Text("Original sound",style: TextStyle(color: Colors.white,fontSize: 15))
                ],)

              ],
            ),
          )
        ],
      ),
    );
  }
}
