import 'dart:async';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'bottomnavigaot.dart';

void main() {
  runApp(MaterialApp(
    home: SplashForUtube(),
    debugShowCheckedModeBanner: false,
  ));
}

class SplashForUtube extends StatefulWidget {
  @override
  State<SplashForUtube> createState() => _SplashForUtubeState();
}

class _SplashForUtubeState extends State<SplashForUtube> {
  @override
  void initState() {
    Timer(Duration(milliseconds: 2800), () {
      Navigator.push(context, MaterialPageRoute(builder: (context) => YoutubeNavi()));
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Center(
        child: Container(
          child: Lottie.asset("assets/Animation/youtube.json"),
        ),
      ),
    );
  }
}
