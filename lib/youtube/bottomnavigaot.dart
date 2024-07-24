import 'package:cloneapps/youtube/shortsscreen/utubeshortsMessi.dart';
import 'package:cloneapps/youtube/testutube.dart';
import 'package:cloneapps/youtube/youtubetabbar.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'home.dart';

void main() {
  runApp(MaterialApp(
    home: YoutubeNavi(),
    debugShowCheckedModeBanner: false,
  ));
}

class YoutubeNavi extends StatefulWidget {
  @override
  State<YoutubeNavi> createState() => _YoutubeNaviState();
}

class _YoutubeNaviState extends State<YoutubeNavi> {
  var screen = [
    YoutubeTabbar(),
    UtubeShortsMessi(),
    Testutube(),
    Testutube(),
    Testutube(),
  ];
  int index = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(child: screen[index]),
      bottomNavigationBar: Container(
        decoration: BoxDecoration(color: Colors.black, boxShadow: [
          BoxShadow(
              spreadRadius: 2,
              blurRadius: 20,
              color: Colors.black.withOpacity(0.3))
        ]),
        child: BottomNavigationBar(
          backgroundColor: Colors.black,
          currentIndex: index,
          onTap: (tapindex) {
            setState(() {
              index = tapindex;
            });
          },
          type: BottomNavigationBarType.shifting,
          selectedItemColor: Colors.white,
          unselectedItemColor: Colors.black,
          items: [
            BottomNavigationBarItem(
                icon: Icon(
                  Icons.home,
                  color: Colors.white,
                ),
                label: "Home",
                backgroundColor: Colors.black),
            BottomNavigationBarItem(
                icon: Icon(
                  CupertinoIcons.play_rectangle_fill,
                  color: Colors.white,
                ),
                label: "Shorts",
                backgroundColor: Colors.black),
            BottomNavigationBarItem(
                icon: Icon(
                  CupertinoIcons.add_circled,
                  color: Colors.white,
                  size: 25,
                ),
                label: "",
                backgroundColor: Colors.black),
            BottomNavigationBarItem(
                icon: Icon(
                  Icons.subscriptions_outlined,
                  color: Colors.white,
                ),
                label: "Subscription",
                backgroundColor: Colors.black),
            BottomNavigationBarItem(
                icon: Icon(
                  Icons.person,
                  color: Colors.white,
                ),
                label: "Profile",
                backgroundColor: Colors.black),
          ],
        ),
      ),
    );
  }
}
