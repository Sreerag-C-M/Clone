import 'package:flutter/material.dart';

import 'home.dart';

class login_screen extends StatefulWidget {
  const login_screen({super.key});

  @override
  State<login_screen> createState() => _login_screenState();
}

class _login_screenState extends State<login_screen> {
  bool showpass = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        toolbarHeight: 50,
        backgroundColor: Colors.black,
        title: const Padding(
          padding: EdgeInsets.only(left: 160),
          child: Row(
            children: [
              Text(
                "English(India)",
                style: TextStyle(
                    color: Colors.white,
                    fontFamily: "InstagramSansMedium",
                    fontSize: 15),
              ),
              SizedBox(
                width: 7,
              ),
              Padding(
                padding: EdgeInsets.only(top: 5),
                child: SizedBox(
                    width: 12,
                    child: Image(
                      image: AssetImage("assets/images/down.png"),
                      color: Colors.white,
                    )),
              )
            ],
          ),
        ),
        automaticallyImplyLeading: false,
      ),
      body: SingleChildScrollView(
        child: Stack(children: [
          Column(
            children: [
              const Padding(
                padding: EdgeInsets.only(top: 230),
                child: SizedBox(
                  width: 200,
                  child: Image(
                    image: AssetImage("assets/images/insta-logo.png"),
                    color: Colors.white,
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 20),
                child: Column(
                  children: [
                    Center(
                      child: Container(
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(5),
                              color: Colors.grey[600]),
                          width: 370,
                          child: Padding(
                            padding: const EdgeInsets.only(left: 10),
                            child: TextFormField(
                              keyboardType: TextInputType.visiblePassword,
                              style: TextStyle(color: Colors.white),
                              decoration: const InputDecoration(
                                  border: InputBorder.none,
                                  hintText: "Phone number, email or username",
                                  hintStyle: TextStyle(
                                      fontFamily: "InstagramSansMedium",
                                      color: Colors.white70)),
                            ),
                          )),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    Center(
                      child: Container(
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(5),
                              color: Colors.grey[600]),
                          width: 370,
                          child: Padding(
                            padding: const EdgeInsets.only(left: 10),
                            child: TextFormField(
                              style: TextStyle(color: Colors.white),
                              obscureText: true,
                              obscuringCharacter: "*",
                              decoration: InputDecoration(
                                  suffixIcon: IconButton(
                                      onPressed: () {
                                        setState(() {
                                          if (showpass) {
                                            showpass = false;
                                          } else {
                                            showpass = true;
                                          }
                                        });
                                      },
                                      icon: Icon(showpass == true
                                          ? Icons.visibility_off
                                          : Icons.visibility)),
                                  border: InputBorder.none,
                                  hintText: "Password",
                                  hintStyle: const TextStyle(
                                      color: Colors.white70,
                                      fontFamily: "InstagramSansMedium")),
                            ),
                          )),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    Center(
                      child: Container(
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              color: Colors.blue.shade700),
                          width: 370,
                          child: ElevatedButton(
                              style: ButtonStyle(
                                  elevation: const WidgetStatePropertyAll(0),
                                  backgroundColor: WidgetStatePropertyAll(
                                      Colors.blue.shade700)),
                              onPressed: () {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) => const Home_screen()));
                              },
                              child: const Text(
                                "Log in",
                                style: TextStyle(
                                    fontFamily: "InstagramSansMedium",
                                    fontSize: 15,
                                    color: Colors.white70),
                              ))),
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 20),
              RichText(
                  text: const TextSpan(children: [
                TextSpan(
                  text: "Forgot your login details?",
                  style: TextStyle(
                    color: Colors.white70,
                    fontFamily: "InstagramSansMedium",
                  ),
                ),
                TextSpan(
                  text: "  Get help logging in.",
                  style: TextStyle(
                    color: Colors.white,
                    fontFamily: "InstagramSansMedium",
                  ),
                )
              ])),
              const SizedBox(
                height: 18,
              ),
              const SizedBox(
                  width: 370,
                  child: Divider(
                    thickness: 0.1,
                  )),
              const SizedBox(
                height: 11,
              ),
              const Padding(
                padding: EdgeInsets.only(left: 140),
                child: Row(
                  children: [
                    Icon(
                      Icons.facebook,
                      color: Colors.lightBlue,
                      size: 35,
                    ),
                    Text(
                      " Log in with Facebook",
                      style: TextStyle(
                          color: Colors.lightBlue,
                          fontWeight: FontWeight.bold,
                          fontFamily: "InstagramSansMedium"),
                    )
                  ],
                ),
              ),
              const SizedBox(
                height: 185,
              ),
              const Divider(
                thickness: 0.7,
              ),
              const SizedBox(
                height: 10,
              ),
              RichText(
                  text: const TextSpan(children: [
                TextSpan(
                  text: "Don't have an account?",
                  style: TextStyle(
                    color: Colors.white70,
                    fontFamily: "InstagramSansMedium",
                  ),
                ),
                TextSpan(
                  text: "  Sign up.",
                  style: TextStyle(
                    color: Colors.white,
                    fontFamily: "InstagramSansMedium",
                  ),
                )
              ])),
            ],
          ),
          Positioned(
              bottom: 265,
              left: 215,
              child: Container(
                width: 35,
                height: 35,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(50),
                    color: Colors.black),
                child: const Center(
                    child: Text(
                  "OR",
                  style: TextStyle(
                      color: Colors.white70, fontFamily: "InstagramSansMedium"),
                )),
              ))
        ]),
      ),
    );
  }
}
