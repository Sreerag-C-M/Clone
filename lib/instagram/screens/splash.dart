import 'package:flutter/material.dart';
import 'login.dart';

class splash_screen extends StatefulWidget {
  const splash_screen({super.key});

  @override
  State<splash_screen> createState() => _splash_screenState();
}

class _splash_screenState extends State<splash_screen> {
  @override
  Widget build(BuildContext context) {
    Future.delayed(const Duration(seconds: 5), () {
      Navigator.push(
          context, MaterialPageRoute(builder: (context) => const login_screen()));
    });
    return Scaffold(
      backgroundColor: const Color(0xff1a1a1a),
      body: Column(children: [
        Center(
          child: Padding(
            padding: const EdgeInsets.only(top: 380),
            child: Container(
              height: 160,
              width: 160,
              decoration: const BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage("assets/images/instalogo.png"))),
            ),
          ),
        ),
        const Padding(
          padding: EdgeInsets.only(top: 300),
          child: Column(
            children: [
              Text(
                "from",
                style: TextStyle(
                    color: Color(0xff576271),
                    fontSize: 18),
              ),
              SizedBox(
                  width: 120,
                  child:
                      Image(image: AssetImage("assets/images/metalogo.png")))
            ],
          ),
        ),
      ]),
    );
  }
}
