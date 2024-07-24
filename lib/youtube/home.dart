import 'package:cloneapps/youtube/shortsscreen/utubeshortsMessi.dart';
import 'package:cloneapps/youtube/shortsscreen/utubeshortscr7.dart';
import 'package:cloneapps/youtube/shortsscreen/utubeshortsneymar.dart';
import 'package:cloneapps/youtube/video/video.dart';
import 'package:cloneapps/youtube/video/video2.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: yout(),
  ));
}

class yout extends StatefulWidget {
  @override
  State<yout> createState() => _youtState();
}

class _youtState extends State<yout> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(
              height: 10,
            ),
            Container(
              height: 60,
              color: Colors.black,
              child: Row(
                children: [
                  Image(image: AssetImage("assets/image/utubeshorts.png")),
                  SizedBox(
                    width: 10,
                  ),
                  Text(
                    "Shorts",
                    style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                        color: Colors.white),
                  )
                ],
              ),
            ),
            Container(
              height: 600,
              color: Colors.black,
              child: StaggeredGrid.count(
                crossAxisCount: 4,
                crossAxisSpacing: 10,
                mainAxisSpacing: 10,
                children: [
                  StaggeredGridTile.count(
                      crossAxisCellCount: 2,
                      mainAxisCellCount: 2.8,
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(20),
                        child: GestureDetector(
                          onTap: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => UtubeShortsMessi()));
                          },
                          child: Stack(
                            children: [
                              Image.asset(
                                "assets/image/Games/Messi.png",
                                height: 300,
                                fit: BoxFit.fitHeight,
                              ),
                              Positioned(
                                  top: 240,
                                  child: Text(
                                    "Leo Messi | 👽 ",
                                    style: TextStyle(
                                        fontSize: 20, color: Colors.white),
                                  )),
                              Positioned(
                                  left: 170,
                                  top: 10,
                                  child: Icon(
                                    Icons.more_vert,
                                    color: Colors.white,
                                    size: 20,
                                  ))
                            ],
                          ),
                        ),
                      )),
                  StaggeredGridTile.count(
                      crossAxisCellCount: 2,
                      mainAxisCellCount: 2.8,
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(20),
                        child: GestureDetector(
                          onTap: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => UtubeShortscr7()));
                          },
                          child: Stack(
                            children: [
                              Image.asset(
                                "assets/image/Games/ronaldo.jpg",
                                height: 300,
                                fit: BoxFit.fitHeight,
                              ),
                              Positioned(
                                  top: 240,
                                  child: Text(
                                    "Ronaldo | 🤖 ",
                                    style: TextStyle(
                                        fontSize: 20, color: Colors.white),
                                  )),
                              Positioned(
                                  left: 170,
                                  top: 10,
                                  child: Icon(
                                    Icons.more_vert,
                                    color: Colors.white,
                                    size: 20,
                                  ))
                            ],
                          ),
                        ),
                      )),
                  StaggeredGridTile.count(
                      crossAxisCellCount: 2,
                      mainAxisCellCount: 2.8,
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(20),
                        child: GestureDetector(
                          onTap: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => UtubeShortsNeymar()));
                          },
                          child: Stack(
                            children: [
                              Image.asset(
                                "assets/image/Games/neymar.jpg",
                                height: 300,
                                fit: BoxFit.fitHeight,
                              ),
                              Positioned(
                                  top: 240,
                                  child: Text(
                                    "Neymar jr | ☠️ ",
                                    style: TextStyle(
                                        fontSize: 20, color: Colors.white),
                                  )),
                              Positioned(
                                  left: 170,
                                  top: 10,
                                  child: Icon(
                                    Icons.more_vert,
                                    color: Colors.white,
                                    size: 20,
                                  ))
                            ],
                          ),
                        ),
                      )),
                  StaggeredGridTile.count(
                      crossAxisCellCount: 2,
                      mainAxisCellCount: 2.8,
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(20),
                        child: Stack(
                          children: [
                            Image.asset(
                              "assets/image/Games/ramos.jpg",
                              height: 300,
                              fit: BoxFit.fitHeight,
                            ),
                            Positioned(
                                top: 240,
                                child: Text(
                                  "Ramos | 😈 ",
                                  style: TextStyle(
                                      fontSize: 20, color: Colors.white),
                                )),
                            Positioned(
                                left: 170,
                                top: 10,
                                child: Icon(
                                  Icons.more_vert,
                                  color: Colors.white,
                                  size: 20,
                                ))
                          ],
                        ),
                      )),
                ],
              ),
            ),
            SizedBox(
              height: 20,
            ),
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
