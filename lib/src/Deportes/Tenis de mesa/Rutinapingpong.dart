import 'package:appinio_video_player/appinio_video_player.dart';
import 'package:flutter/material.dart';

class RutinaPingPong extends StatefulWidget {
  const RutinaPingPong({super.key});

  @override
  State<RutinaPingPong> createState() => _RutinaPingPongState();
}

class _RutinaPingPongState extends State<RutinaPingPong> {
  late CustomVideoPlayerController customVideoPlayerController;
  String Ruta_Video = "images/RutinaPingPong.mp4";

  @override
  void initState() {
    super.initState();
    initializevideoplayer();
  }

  @override
  void dispose() {
    customVideoPlayerController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Color.fromARGB(246, 255, 255, 255),
        appBar: AppBar(
          title: const Text(
            "Tenis de mesa 🏓",
            style: TextStyle(
              fontSize: 28.0,
              color: Color.fromARGB(255, 255, 255, 255),
              fontFamily: "Oswald",
            ),
          ),
          iconTheme: IconThemeData(color: Colors.white),
          centerTitle: true,
          backgroundColor: const Color.fromARGB(255, 153, 14, 14),
        ),
        body: Column(
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(
              "Video de guía rutina de Tenis de mesa 🏓",
              style: TextStyle(
                fontSize: 28.0,
                color: Color.fromARGB(255, 0, 0, 0),
                fontFamily: "Oswald",
              ),
            ),
            Padding(padding: EdgeInsets.only(top: 30.0)),
            CustomVideoPlayer(
              customVideoPlayerController: customVideoPlayerController,
            ),
          ],
        ));
  }

  void initializevideoplayer() {
    VideoPlayerController _videoplayercontroller;
    _videoplayercontroller = VideoPlayerController.asset(Ruta_Video)
      ..initialize().then((value) {
        setState(() {});
      });
    customVideoPlayerController = CustomVideoPlayerController(
        context: context, videoPlayerController: _videoplayercontroller);
  }
}
