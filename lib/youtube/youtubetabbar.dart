import 'package:cloneapps/youtube/testutube.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'home.dart';

main() {
  runApp(MaterialApp(
    home: YoutubeTabbar(),
    debugShowCheckedModeBanner: false,
  ));
}

class YoutubeTabbar extends StatefulWidget {
  const YoutubeTabbar({super.key});

  @override
  State<YoutubeTabbar> createState() => _YoutubeTabbarState();
}

class _YoutubeTabbarState extends State<YoutubeTabbar> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 7,
      child: Scaffold(
        backgroundColor: Colors.black,
        appBar: AppBar(
          automaticallyImplyLeading: false,
          backgroundColor: Colors.black,
          title: Row(
            children: [
              Image.asset("assets/image/youtube.png",height: 30,),
              Text(
                "YouTube",
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 25,
                    fontStyle: FontStyle.normal,
                  color: Colors.white
              ),
              )
            ],
          ),
          actions: [
            Row(
              children: [
              Padding(
                padding: const EdgeInsets.only(right: 15),
                child: Icon(Icons.cast_connected,color: Colors.white70,),
              ),
                Padding(
                  padding: const EdgeInsets.only(right: 15),
                  child: Icon(CupertinoIcons.bell,color: Colors.white70),
                ),Padding(
                  padding: const EdgeInsets.only(right: 15),
                  child: Icon(CupertinoIcons.search,color: Colors.white70),
                ),
            ],)
          ],
          bottom: TabBar(

            isScrollable: true,
            indicatorColor: Colors.black87,
            unselectedLabelColor: Colors.grey,
            labelColor: Colors.grey,
            dividerColor: Colors.black,

            tabs: [
              Tab(
                child: ClipRRect(
                    borderRadius: BorderRadius.circular(15),
                    child: Container(
                      height: 40,
                      width: 60,
                      decoration: BoxDecoration(boxShadow: [
                        BoxShadow(
                            spreadRadius: 20,
                            blurRadius: 3,
                            color: Colors.grey.withOpacity(0.2))
                      ]),
                      child: Center(child: Icon(CupertinoIcons.compass)),
                    )),
              ),
              Tab(
                child: ClipRRect(
                    borderRadius: BorderRadius.circular(15),
                    child: Container(
                      height: 40,
                      width: 60,
                      decoration: BoxDecoration(boxShadow: [
                        BoxShadow(
                            spreadRadius: 20,
                            blurRadius: 3,
                            color: Colors.white)
                      ]),
                      child: Center(child: Text("All",style: TextStyle(fontSize: 15,color: Colors.black),)),
                    )),
              ),
              Tab(
                child: ClipRRect(
                    borderRadius: BorderRadius.circular(15),
                    child: Container(
                      height: 50,
                      width: 100,
                      decoration: BoxDecoration(boxShadow: [
                        BoxShadow(
                            spreadRadius: 20,
                            blurRadius: 3,
                            color: Colors.grey.withOpacity(0.2))
                      ]),
                      child: Center(child: Text("New to you",style: TextStyle(fontSize: 15,color: Colors.white70),)),
                    )),
              ),Tab(
                child: ClipRRect(
                    borderRadius: BorderRadius.circular(15),
                    child: Container(
                      height: 50,
                      width: 80,
                      decoration: BoxDecoration(boxShadow: [
                        BoxShadow(
                            spreadRadius: 20,
                            blurRadius: 3,
                            color: Colors.grey.withOpacity(0.2))
                      ]),
                      child: Center(child: Text("Gaming",style: TextStyle(fontSize: 15,color: Colors.white70),)),
                    )),
              ),Tab(
                child: ClipRRect(
                    borderRadius: BorderRadius.circular(15),
                    child: Container(
                      height: 50,
                      width: 80,
                      decoration: BoxDecoration(boxShadow: [
                        BoxShadow(
                            spreadRadius: 20,
                            blurRadius: 3,
                            color: Colors.grey.withOpacity(0.2))
                      ]),
                      child: Center(child: Text("Manga",style: TextStyle(fontSize: 15,color: Colors.white70),)),
                    )),
              ),Tab(
                child: ClipRRect(
                    borderRadius: BorderRadius.circular(15),
                    child: Container(
                      height: 50,
                      width: 80,
                      decoration: BoxDecoration(boxShadow: [
                        BoxShadow(
                            spreadRadius: 20,
                            blurRadius: 3,
                            color: Colors.grey.withOpacity(0.2))
                      ]),
                      child: Center(child: Text("Kaztro",style: TextStyle(fontSize: 15,color: Colors.white70),)),
                    )),
              ),Tab(
                child: ClipRRect(
                    borderRadius: BorderRadius.circular(15),
                    child: Container(
                      height: 50,
                      width: 80,
                      decoration: BoxDecoration(boxShadow: [
                        BoxShadow(
                            spreadRadius: 20,
                            blurRadius: 3,
                            color: Colors.grey.withOpacity(0.2))
                      ]),
                      child: Center(child: Text("One Piece",style: TextStyle(fontSize: 15,color: Colors.white70),)),
                    )),
              ),
            ],
          ),
        ),
        body: TabBarView(
          children: [
            yout(),
            yout(),
            Testutube(),
            Testutube(),
            Testutube(),
            Testutube(),
            Testutube(),
          ],
        ),
      ),
    );
  }
}
