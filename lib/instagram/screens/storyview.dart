import 'dart:async';
import 'package:flutter/material.dart';

import 'home.dart';

class StoryView extends StatefulWidget {
  const StoryView({super.key});

  @override
  State<StoryView> createState() => _StoryViewState();
}

class _StoryViewState extends State<StoryView> {
  double percent = 0.0;
  late Timer _timer;

  void startTimer() {
    _timer = Timer.periodic(const Duration(milliseconds: 5), (timer) {
      setState(() {
        percent += 0.001;
        if (percent > 1) {
          _timer.cancel();
          Navigator.pop(context);
        }
      });
    });
  }

  @override
  void initState() {
    startTimer();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        backgroundColor: Colors.black,
      ),
      body: Stack(
        children: [
          GestureDetector(
            onTap: () => Navigator.pop(context),
            child: Container(
              color: Colors.black,
              child: Column(
                children: [
                  Container(
                    width: double.infinity,
                    height: 750,
                    decoration: BoxDecoration(
                        image: const DecorationImage(
                            image: AssetImage("assets/images/story_pic.jpg"),
                            fit: BoxFit.cover),
                        borderRadius: BorderRadius.circular(10)),
                  ),
                  Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(10.0),
                        child: Container(
                          width: 320,
                          height: 55,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(30)),
                          child: TextField(
                            decoration: InputDecoration(
                                hintText: "   Message",
                                hintStyle: const TextStyle(
                                    color: Colors.white,
                                    fontFamily: "InstagramSansMedium"),
                                border: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(30))),
                          ),
                        ),
                      ),
                      const SizedBox(
                        width: 15,
                      ),
                      const SizedBox(
                          height: 28,
                          child: Image(
                            image: AssetImage("assets/images/heart (1).png"),
                            color: Colors.white,
                          )),
                      const SizedBox(
                        width: 18,
                      ),
                      const SizedBox(
                          height: 28,
                          child: Image(
                            image: AssetImage("assets/images/send.png"),
                            color: Colors.white,
                          )),
                    ],
                  )
                ],
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 8),
            child: Column(
              children: [
                LinearProgressIndicator(
                  color: Colors.white,
                  backgroundColor: Colors.grey,
                  value: percent,
                ),
                const SizedBox(
                  height: 8,
                ),
                const Row(
                  children: [
                    CircleAvatar(
                      backgroundImage:
                          AssetImage("assets/images/profile1.jpeg"),
                      radius: 25,
                    ),
                    SizedBox(
                      width: 8,
                    ),
                    Text(
                      "kill_monger",
                      style: TextStyle(color: Colors.white, fontSize: 17),
                    )
                  ],
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}

class StoryView1 extends StatefulWidget {
  const StoryView1({super.key});

  @override
  State<StoryView1> createState() => _StoryView1State();
}

class _StoryView1State extends State<StoryView1> {
  double percent = 0.0;
  late Timer _timer;

  void startTimer() {
    _timer = Timer.periodic(const Duration(milliseconds: 10), (timer) {
      setState(() {
        percent += 0.001;
        if (percent > 1) {
          _timer.cancel();
          Navigator.pop(context);
        }
      });
    });
  }

  @override
  void initState() {
    startTimer();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        backgroundColor: Colors.black,
      ),
      body: Stack(
        children: [
          GestureDetector(
            onTap: () => Navigator.pop(context),
            child: Container(
              color: Colors.black,
              child: Column(
                children: [
                  Container(
                    width: double.infinity,
                    height: 750,
                    decoration:
                        BoxDecoration(borderRadius: BorderRadius.circular(10)),
                    child: const VideoPlayerEg(),
                  ),
                  Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(10.0),
                        child: Container(
                          width: 320,
                          height: 55,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(30)),
                          child: TextField(
                            decoration: InputDecoration(
                                hintText: "   Message",
                                hintStyle: const TextStyle(
                                    color: Colors.white,
                                    fontFamily: "InstagramSansMedium"),
                                border: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(30))),
                          ),
                        ),
                      ),
                      const SizedBox(
                        width: 15,
                      ),
                      const SizedBox(
                          height: 28,
                          child: Image(
                            image: AssetImage("assets/images/heart (1).png"),
                            color: Colors.white,
                          )),
                      const SizedBox(
                        width: 18,
                      ),
                      const SizedBox(
                          height: 28,
                          child: Image(
                            image: AssetImage("assets/images/send.png"),
                            color: Colors.white,
                          )),
                    ],
                  )
                ],
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 8),
            child: Column(
              children: [
                LinearProgressIndicator(
                  color: Colors.white,
                  backgroundColor: Colors.grey,
                  value: percent,
                ),
                const SizedBox(
                  height: 8,
                ),
                const Row(
                  children: [
                    CircleAvatar(
                      backgroundImage:
                          AssetImage("assets/images/profile2.jpeg"),
                      radius: 25,
                    ),
                    SizedBox(
                      width: 8,
                    ),
                    Text(
                      "storm_breaker",
                      style: TextStyle(color: Colors.white, fontSize: 17),
                    )
                  ],
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
