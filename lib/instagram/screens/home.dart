import 'package:cloneapps/instagram/screens/storyview.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:video_player/video_player.dart';

class Home_screen extends StatefulWidget {
  const Home_screen({super.key});

  @override
  State<Home_screen> createState() => _Home_screenState();
}

class _Home_screenState extends State<Home_screen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        automaticallyImplyLeading: false,
        toolbarHeight: 80,
        backgroundColor: Colors.black,
        title: const Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              children: [
                SizedBox(
                  height: 50,
                  child: Image(
                    image: AssetImage("assets/images/insta-logo.png"),
                    color: Colors.white,
                  ),
                ),
                Icon(
                  CupertinoIcons.chevron_down,
                  color: Colors.white,
                )
              ],
            ),
            Row(
              children: [
                SizedBox(
                    height: 30,
                    child: Image(
                      image: AssetImage("assets/images/heart (1).png"),
                      color: Colors.white,
                    )),
                SizedBox(
                  width: 30,
                ),
                SizedBox(
                    height: 29,
                    child: Image(
                      image: AssetImage("assets/images/messenger.png"),
                      color: Colors.white,
                    ))
              ],
            ),
          ],
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.only(top: 5),
          child: Column(
            children: [
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Stack(children: [
                  Row(
                    children: [
                      const SizedBox(
                        width: 15,
                      ),
                      Column(
                        children: [
                          SizedBox(
                            height: 110,
                            width: 110,
                            child: Padding(
                              padding: const EdgeInsets.all(5.0),
                              child: Container(
                                height: 90,
                                decoration: BoxDecoration(
                                    color: Colors.black,
                                    borderRadius: BorderRadius.circular(60)),
                                child: const Padding(
                                  padding: EdgeInsets.all(4.0),
                                  child: CircleAvatar(
                                    radius: 50,
                                    backgroundImage:
                                        AssetImage("assets/images/profile.png"),
                                  ),
                                ),
                              ),
                            ),
                          ),
                          const Text(
                            "Your story",
                            style: TextStyle(
                                color: Colors.white,
                                fontFamily: "InstagramSansMedium"),
                          )
                        ],
                      ),
                      const SizedBox(
                        width: 15,
                      ),
                      Column(
                        children: [
                          GestureDetector(
                            child: Container(
                              height: 110,
                              width: 110,
                              decoration: BoxDecoration(
                                  image: const DecorationImage(
                                      image: AssetImage(
                                          "assets/images/story_gradient.jpg")),
                                  borderRadius: BorderRadius.circular(60)),
                              child: Padding(
                                padding: const EdgeInsets.all(5.0),
                                child: Container(
                                  height: 90,
                                  decoration: BoxDecoration(
                                      color: Colors.black,
                                      borderRadius: BorderRadius.circular(60)),
                                  child: const Padding(
                                    padding: EdgeInsets.all(4.0),
                                    child: CircleAvatar(
                                      radius: 50,
                                      backgroundImage: AssetImage(
                                          "assets/images/profile1.jpeg"),
                                    ),
                                  ),
                                ),
                              ),
                            ),
                            onTap: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => const StoryView()));
                            },
                          ),
                          const Text(
                            "kill_monger",
                            style: TextStyle(
                                color: Colors.white,
                                fontFamily: "InstagramSansMedium"),
                          )
                        ],
                      ),
                      const SizedBox(
                        width: 20,
                      ),
                      Column(
                        children: [
                          GestureDetector(
                            child: Container(
                              height: 110,
                              width: 110,
                              decoration: BoxDecoration(
                                  image: const DecorationImage(
                                      image: AssetImage(
                                          "assets/images/story_gradient.jpg")),
                                  borderRadius: BorderRadius.circular(60)),
                              child: Padding(
                                padding: const EdgeInsets.all(5.0),
                                child: Container(
                                  height: 90,
                                  decoration: BoxDecoration(
                                      color: Colors.black,
                                      borderRadius: BorderRadius.circular(60)),
                                  child: const Padding(
                                    padding: EdgeInsets.all(4.0),
                                    child: CircleAvatar(
                                      radius: 50,
                                      backgroundImage:
                                          AssetImage("assets/images/profile2.jpeg"),
                                    ),
                                  ),
                                ),
                              ),
                            ),
                            onTap: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => const StoryView1()));
                            },
                          ),
                          const Text(
                            "storm_breaker",
                            style: TextStyle(
                                color: Colors.white,
                                fontFamily: "InstagramSansMedium"),
                          )
                        ],
                      ),
                      const SizedBox(
                        width: 20,
                      ),
                      Column(
                        children: [
                          Container(
                            height: 110,
                            width: 110,
                            decoration: BoxDecoration(
                                image: const DecorationImage(
                                    image: AssetImage(
                                        "assets/images/story_gradient.jpg")),
                                borderRadius: BorderRadius.circular(60)),
                            child: Padding(
                              padding: const EdgeInsets.all(5.0),
                              child: Container(
                                height: 90,
                                decoration: BoxDecoration(
                                    color: Colors.black,
                                    borderRadius: BorderRadius.circular(60)),
                                child: const Padding(
                                  padding: EdgeInsets.all(4.0),
                                  child: CircleAvatar(
                                    radius: 50,
                                    backgroundImage:
                                        AssetImage("assets/images/profile3.jpeg"),
                                  ),
                                ),
                              ),
                            ),
                          ),
                          const Text(
                            "captain_america",
                            style: TextStyle(
                                color: Colors.white,
                                fontFamily: "InstagramSansMedium"),
                          )
                        ],
                      ),
                      const SizedBox(
                        width: 20,
                      ),
                      Column(
                        children: [
                          Container(
                            height: 110,
                            width: 110,
                            decoration: BoxDecoration(
                                image: const DecorationImage(
                                    image: AssetImage(
                                        "assets/images/story_gradient.jpg")),
                                borderRadius: BorderRadius.circular(60)),
                            child: Padding(
                              padding: const EdgeInsets.all(5.0),
                              child: Container(
                                height: 90,
                                decoration: BoxDecoration(
                                    color: Colors.black,
                                    borderRadius: BorderRadius.circular(60)),
                                child: const Padding(
                                  padding: EdgeInsets.all(4.0),
                                  child: CircleAvatar(
                                    radius: 50,
                                    backgroundImage:
                                        AssetImage("assets/images/profile4.jpeg"),
                                  ),
                                ),
                              ),
                            ),
                          ),
                          const Text(
                            "iron_man",
                            style: TextStyle(
                                color: Colors.white,
                                fontFamily: "InstagramSansMedium"),
                          )
                        ],
                      ),
                    ],
                  ),
                  Positioned(
                      bottom: 26,
                      left: 87,
                      child: Container(
                        width: 35,
                        height: 35,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(50),
                            color: Colors.black),
                        child: Padding(
                          padding: const EdgeInsets.all(3.0),
                          child: Container(
                            width: 35,
                            height: 35,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(50),
                                color: Colors.lightBlue.shade700),
                            child: const Center(
                                child: Icon(
                              CupertinoIcons.add,
                              color: Colors.white,size: 17,
                            )),
                          ),
                        ),
                      ))
                ]),
              ),
              const SizedBox(
                height: 10,
              ),
              const FeedCardReel(
                profilePic: "assets/images/profile2.jpeg",
                name: 'storm_breaker',
                subName: 'original sound',
                bio:
                    'LA GRAN DE LA CONMEBOL COPA AMERICA USA 2024',
                likes: '50,020',
              ),
              const FeedCard(
                  profilePic: "assets/images/profile1.jpeg",
                  name: 'kill_monger',
                  subName: '',
                  sourcePath: 'assets/images/post1.jpg',
                  bio: 'Last ride to Miami',
                  likes: '18,247')
            ],
          ),
        ),
      ),
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.only(bottom: 10, top: 15),
        child: Container(
          color: Colors.black,
          child: const Row(
            children: [
              SizedBox(width: 32,),
              SizedBox(
                  height: 30,
                  child: Image(
                    image: AssetImage("assets/images/homepage.png"),
                    color: Colors.white70,
                  )),
              SizedBox(width: 56,),
              SizedBox(
                  height: 30,
                  child: Image(
                    image: AssetImage("assets/images/search.png"),
                    color: Colors.white70,
                  )),
              SizedBox(width: 56,),
              SizedBox(
                  height: 30,
                  child: Image(
                    image: AssetImage("assets/images/more.png"),
                    color: Colors.white70,
                  )),
              SizedBox(width: 56,),
              SizedBox(
                  height: 33,
                  child: Image(
                    image: AssetImage("assets/images/reels.png"),
                    color: Colors.white70,
                  )),
              SizedBox(width: 56),
              CircleAvatar(
                backgroundImage: AssetImage("assets/images/profile.png"),
                radius: 18,
              ),
              SizedBox(width: 32,)
            ],
          ),
        ),
      ),
    );
  }
}

class FeedCardReel extends StatelessWidget {
  final String profilePic;
  final String name;
  final String subName;
  final String bio;
  final String likes;

  const FeedCardReel(
      {super.key,
      required this.profilePic,
      required this.name,
      required this.subName,
      required this.bio,
      required this.likes});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          child: Stack(children: [
            Container(child: const VideoPlayerEg()),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      Container(
                        height: 50,
                        width: 50,
                        decoration: BoxDecoration(
                            image: const DecorationImage(
                                image: AssetImage(
                                    "assets/images/story_gradient.jpg")),
                            borderRadius: BorderRadius.circular(60)),
                        child: Padding(
                          padding: const EdgeInsets.all(3.0),
                          child: Container(
                            height: 70,
                            decoration: BoxDecoration(
                                color: Colors.black,
                                borderRadius: BorderRadius.circular(60)),
                            child: Padding(
                              padding: const EdgeInsets.all(4.0),
                              child: CircleAvatar(
                                radius: 10,
                                backgroundImage: AssetImage(profilePic),
                              ),
                            ),
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              name,
                              style: const TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold,
                                  fontFamily: "InstagramSansMedium",
                                  fontSize: 17),
                            ),
                            Text(
                              subName,
                              style: const TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold,
                                  fontFamily: "InstagramSansMedium",
                                  fontSize: 15),
                            ),
                          ],
                        ),
                      )
                    ],
                  ),
                  const Icon(
                    Icons.more_vert,
                    color: Colors.white,
                    size: 30,
                  )
                ],
              ),
            ),
          ]),
        ),
        // SizedBox(height: 10,),
        const Padding(
          padding: EdgeInsets.all(8.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  Icon(
                    Icons.favorite_outline,
                    color: Colors.white,
                    size: 36,
                  ),
                  SizedBox(
                    width: 25,
                  ),
                  SizedBox(
                      height: 30,
                      child: Image(
                        image: AssetImage("assets/images/chat.png"),
                        color: Colors.white,
                      )),
                  SizedBox(
                    width: 25,
                  ),
                  SizedBox(
                      height: 30,
                      child: Image(
                        image: AssetImage("assets/images/send.png"),
                        color: Colors.white,
                      )),
                ],
              ),
              SizedBox(
                  height: 30,
                  child: Image(
                    image: AssetImage("assets/images/bookmark.png"),
                    color: Colors.white,
                  )),
            ],
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(6.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "$likes likes",
                style: const TextStyle(color: Colors.white, fontSize: 18),
              ),
              Text(
                bio,
                style: const TextStyle(color: Colors.white, fontSize: 18),
              ),
            ],
          ),
        )
      ],
    );
  }
}

class FeedCard extends StatelessWidget {
  final String profilePic;
  final String name;
  final String subName;
  final String bio;
  final String likes;
  final String sourcePath;

  const FeedCard(
      {super.key,
      required this.profilePic,
      required this.name,
      required this.subName,
      required this.sourcePath,
      required this.bio,
      required this.likes});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  Container(
                    height: 50,
                    width: 50,
                    decoration: BoxDecoration(
                        image: const DecorationImage(
                            image:
                                AssetImage("assets/images/story_gradient.jpg")),
                        borderRadius: BorderRadius.circular(60)),
                    child: Padding(
                      padding: const EdgeInsets.all(3.0),
                      child: Container(
                        height: 70,
                        decoration: BoxDecoration(
                            color: Colors.black,
                            borderRadius: BorderRadius.circular(60)),
                        child: Padding(
                          padding: const EdgeInsets.all(4.0),
                          child: CircleAvatar(
                            radius: 8,
                            backgroundImage: AssetImage(profilePic),
                          ),
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          name,
                          style: const TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                              fontSize: 17),
                        ),
                      ],
                    ),
                  )
                ],
              ),
              const Icon(
                Icons.more_vert,
                color: Colors.white,
                size: 30,
              )
            ],
          ),
        ),
        Container(child: Image(image: AssetImage(sourcePath))),
        // SizedBox(height: 10,),
        const Padding(
          padding: EdgeInsets.all(8.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  Icon(
                    Icons.favorite_outline,
                    color: Colors.white,
                    size: 36,
                  ),
                  SizedBox(
                    width: 25,
                  ),
                  SizedBox(
                      height: 30,
                      child: Image(
                        image: AssetImage("assets/images/chat.png"),
                        color: Colors.white,
                      )),
                  SizedBox(
                    width: 25,
                  ),
                  SizedBox(
                      height: 30,
                      child: Image(
                        image: AssetImage("assets/images/send.png"),
                        color: Colors.white,
                      )),
                ],
              ),
              SizedBox(
                  height: 30,
                  child: Image(
                    image: AssetImage("assets/images/bookmark.png"),
                    color: Colors.white,
                  )),
            ],
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(6.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "$likes likes",
                style: const TextStyle(color: Colors.white, fontSize: 18),
              ),
              Text(
                bio,
                style: const TextStyle(color: Colors.white, fontSize: 18),
              ),
            ],
          ),
        )
      ],
    );
  }
}

class VideoPlayerEg extends StatefulWidget {
  const VideoPlayerEg({super.key});

  final String title = "Video Demo";

  @override
  State<VideoPlayerEg> createState() => _VideoPlayerEgState();
}

class _VideoPlayerEgState extends State<VideoPlayerEg> {
  late VideoPlayerController _controller;
  late Future<void> _initializeVideoPlayerFuture;

  @override
  void initState() {
    _controller =
        VideoPlayerController.asset("assets/videos/messi.mp4"); // video here
    _initializeVideoPlayerFuture = _controller.initialize().then((_) {
      _controller.setLooping(false);
      _controller.setLooping(true);
      _controller.play();
    });
    super.initState();
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
        future: _initializeVideoPlayerFuture,
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.done) {
            return AspectRatio(
              aspectRatio: _controller.value.aspectRatio,
              child: VideoPlayer(_controller),
            );
          } else {
            return const Center(
              child: CircularProgressIndicator(),
            );
          }
        });
  }
}
