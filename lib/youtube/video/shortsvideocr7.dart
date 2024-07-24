import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:video_player/video_player.dart';
import 'dart:async';
void main(){
  runApp(MaterialApp(home: VideoPlayerCr7(),));
}

class VideoPlayerCr7 extends StatefulWidget {
  VideoPlayerCr7() : super();

  final String title = "Video Demo";

  @override
  State<VideoPlayerCr7> createState() => _VideoPlayerCr7State();
}

class _VideoPlayerCr7State extends State<VideoPlayerCr7> {
  late VideoPlayerController _controller;
  late Future<void> _initializeVideoPlayerFuture;
  bool _showStatus = false;

  @override
  void initState() {
    super.initState();
    _controller = VideoPlayerController.asset("assets/image/cr7.mp4"); // video here
    _initializeVideoPlayerFuture = _controller.initialize().then((_) {
      _controller.setLooping(true);
      _controller.play();
    });
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  void _togglePlayPause() {
    setState(() {
      if (_controller.value.isPlaying) {
        _controller.pause();
        _showStatusBox('Paused');
      } else {
        _controller.play();
        _showStatusBox('Playing');
      }
    });
  }

  void _showStatusBox(String status) {
    setState(() {
      _showStatus = true;
    });
    Timer(Duration(seconds: 3), () {
      setState(() {
        _showStatus = false;
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
      future: _initializeVideoPlayerFuture,
      builder: (context, snapshot) {
        if (snapshot.connectionState == ConnectionState.done) {
          return Stack(
              alignment: Alignment.center,
              children: [
                GestureDetector(
                  onTap: _togglePlayPause,
                  child: AspectRatio(
                    aspectRatio: _controller.value.aspectRatio,
                    child: VideoPlayer(_controller),
                  ),
                ),
                if (_showStatus)
                  ClipRRect(
                    borderRadius: BorderRadius.circular(30),
                    child: Container(
                      color: Colors.black54,
                      padding: EdgeInsets.all(8.0),
                      child: Icon(
                        _controller.value.isPlaying ? CupertinoIcons.play : CupertinoIcons.pause,
                        color: Colors.white,size: 40,),
                    ),
                  ),

              ]
          );
        } else {
          return Center(
            child: CircularProgressIndicator(),
          );
        }
      },
    );
  }
}
