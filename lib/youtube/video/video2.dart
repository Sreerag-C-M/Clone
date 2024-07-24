import 'package:cloneapps/youtube/video/video.dart';
import 'package:flick_video_player/flick_video_player.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:video_player/video_player.dart';

main() {
  runApp(MaterialApp(
    home: Videoplay2(),
  ));
}

class Videoplay2 extends StatefulWidget {
  const Videoplay2({super.key});

  @override
  State<Videoplay2> createState() => _Videoplay2State();
}

class _Videoplay2State extends State<Videoplay2> {
  late FlickManager flickManager;

  @override
  void initState() {
    super.initState();
    flickManager = FlickManager(
        videoPlayerController:
            VideoPlayerController.asset("assets/image/howtotraindragon.mp4"));
  }

  @override
  void dispose() {
    flickManager.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            AspectRatio(
                aspectRatio: 16 / 10,
                child: Center(
                  child: FlickVideoPlayer(
                    flickManager: flickManager,
                  ),
                )),
            SizedBox(
              height: 10,
            ),
            Text(
              "HOW TO TRAIN YOUR DRAGON - 'Dragons Aren't Fireproof' Official Clip",
              style: TextStyle(
                  fontSize: 21, color: Colors.white, fontWeight: FontWeight.bold),
            ),
            Text(
              "49M views  3 years ago ...more",
              style: TextStyle(
                  fontSize: 14,
                  color: Colors.white60,
                  fontWeight: FontWeight.bold),
            ),
            ListTile(
              leading: Icon(
                Icons.ac_unit_outlined,
                color: Colors.white,
                size: 30,
              ),
              title: Row(
                children: [
                  Text(
                    "Dragons",
                    style: TextStyle(color: Colors.white, fontSize: 18),
                  ),
                  Text(
                    "   18M",
                    style: TextStyle(color: Colors.white60, fontSize: 15),
                  ),
                ],
              ),
              trailing: ClipRRect(
                  borderRadius: BorderRadius.circular(20),
                  child: Container(
                    height: 30,
                    width: 90,
                    decoration: BoxDecoration(boxShadow: [
                      BoxShadow(
                          spreadRadius: 20, blurRadius: 3, color: Colors.white),
                    ]),
                    child: Center(
                      child: Text(
                        "Subscribe",
                        style: TextStyle(fontSize: 15),
                      ),
                    ),
                  )),
            ),
            SizedBox(
              height: 10,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                ClipRRect(
                  borderRadius: BorderRadius.circular(30),
                  child: Container(
                    height: 40,
                    width: 70,
                    decoration: BoxDecoration(boxShadow: [
                      BoxShadow(
                          blurRadius: 3,
                          spreadRadius: 30,
                          color: Colors.grey.withOpacity(0.2))
                    ]),
                    child: Center(
                      child: Icon(
                        Icons.thumb_up_alt_outlined,
                        color: Colors.white,
                      ),
                    ),
                  ),
                ),
                ClipRRect(
                  borderRadius: BorderRadius.circular(30),
                  child: Container(
                    height: 40,
                    width: 70,
                    decoration: BoxDecoration(boxShadow: [
                      BoxShadow(
                          blurRadius: 3,
                          spreadRadius: 30,
                          color: Colors.grey.withOpacity(0.2))
                    ]),
                    child: Center(
                      child: Icon(
                        Icons.thumb_down_alt_outlined,
                        color: Colors.white,
                      ),
                    ),
                  ),
                ),
                ClipRRect(
                  borderRadius: BorderRadius.circular(30),
                  child: Container(
                    height: 40,
                    width: 80,
                    decoration: BoxDecoration(boxShadow: [
                      BoxShadow(
                          blurRadius: 3,
                          spreadRadius: 30,
                          color: Colors.grey.withOpacity(0.2))
                    ]),
                    child: Center(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Icon(
                            Icons.share,
                            color: Colors.white,
                            weight: 100,
                          ),
                          Text(
                            "Share",
                            style: TextStyle(color: Colors.white),
                          )
                        ],
                      ),
                    ),
                  ),
                ),
                ClipRRect(
                  borderRadius: BorderRadius.circular(30),
                  child: Container(
                    height: 40,
                    width: 90,
                    decoration: BoxDecoration(boxShadow: [
                      BoxShadow(
                          blurRadius: 3,
                          spreadRadius: 30,
                          color: Colors.grey.withOpacity(0.2))
                    ]),
                    child: Center(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Icon(
                            CupertinoIcons.arrow_down_to_line,
                            color: Colors.white,
                            weight: 100,
                          ),
                          Text(
                            "Download",
                            style: TextStyle(color: Colors.white),
                          )
                        ],
                      ),
                    ),
                  ),
                ),
                ClipRRect(
                  borderRadius: BorderRadius.circular(30),
                  child: Container(
                    height: 40,
                    width: 80,
                    decoration: BoxDecoration(boxShadow: [
                      BoxShadow(
                          blurRadius: 3,
                          spreadRadius: 30,
                          color: Colors.grey.withOpacity(0.2))
                    ]),
                    child: Center(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Icon(
                            Icons.cut_sharp,
                            color: Colors.white,
                          ),
                          Text(
                            "Clip",
                            style: TextStyle(color: Colors.white),
                          )
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 30,
            ),
            ClipRRect(
                borderRadius: BorderRadius.circular(20),
                child: Container(
                  height: 100,
                  decoration: BoxDecoration(boxShadow: [
                    BoxShadow(
                        blurRadius: 3,
                        spreadRadius: 20,
                        color: Colors.grey.withOpacity(0.2))
                  ]),
                  child: Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(right: 300,top: 10),
                        child: Text(
                          "Comments",
                          style: TextStyle(color: Colors.white,fontSize: 17,fontWeight: FontWeight.bold),
                        ),
                      ),
                      ListTile(
                        leading: Image.asset(
                          "assets/image/Anime/nezukochwaan.png",
                          height: 30,
                        ),
                        title: Text("I love this movie so muchh❤️❤️",style: TextStyle(color: Colors.white),),
                      )
                    ],
                  ),
                )),
            SizedBox(height: 20,),
            Stack(
              children: [
                GestureDetector(
                  onTap: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => Videoplay()));
                  },
                  child: Container(
                      color: Colors.blue,
                      height: 220,
                      width: double.infinity,
                      child: Image(
                        image: AssetImage("assets/image/butterflyimage.jpg"),
                        fit: BoxFit.fill,
                      )),
                ),
                Positioned(
                    left: 380,
                    top: 190,
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(5),
                      child: Container(
                        height: 20,
                        width: 30,
                        color: Colors.black.withOpacity(0.5),
                        child: Center(
                          child: Text(
                            "0:14",
                            style: TextStyle(color: Colors.white),
                          ),
                        ),
                      ),
                    ))
              ],
            ),
            ListTile(
              leading: Icon(
                Icons.ac_unit_outlined,
                color: Colors.white,
              ),
              title: Text(
                "Butterfly Animation",
                style: TextStyle(color: Colors.white),
              ),
              subtitle: Text(
                "Live With Creativity  26M views  2years ago",
                style: TextStyle(color: Colors.white),
              ),
              trailing: Icon(
                Icons.more_vert_sharp,
                color: Colors.white,
              ),
            ),
            SizedBox(height: 20,),
            Stack(
              children: [
                GestureDetector(
                  onTap: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => Videoplay2()));
                  },
                  child: Container(
                      color: Colors.blue,
                      height: 220,
                      width: double.infinity,
                      child: Image(
                        image:
                        AssetImage("assets/image/howtotraindragonimg.jpeg"),
                        fit: BoxFit.fill,
                      )),
                ),
                Positioned(
                    left: 380,
                    top: 190,
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(5),
                      child: Container(
                        height: 20,
                        width: 30,
                        color: Colors.black.withOpacity(0.5),
                        child: Center(
                          child: Text(
                            "1:03",
                            style: TextStyle(color: Colors.white),
                          ),
                        ),
                      ),
                    ))
              ],
            ),
            ListTile(
              leading: Icon(
                Icons.ac_unit_outlined,
                color: Colors.white,
              ),
              title: Text(
                "How to train your Dragon",
                style: TextStyle(color: Colors.white),
              ),
              subtitle: Text(
                "Dragons  49M views  3years ago",
                style: TextStyle(color: Colors.white),
              ),
              trailing: Icon(
                Icons.more_vert_sharp,
                color: Colors.white,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
