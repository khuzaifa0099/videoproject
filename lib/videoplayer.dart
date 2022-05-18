import 'package:flutter/material.dart';
import 'package:video_player/video_player.dart';
import 'package:videoproject/videoPlayeWidget.dart';


class VideoplayerPage extends StatefulWidget {
  const VideoplayerPage({Key? key}) : super(key: key);

  @override
  _VideoplayerPageState createState() => _VideoplayerPageState();
}

class _VideoplayerPageState extends State<VideoplayerPage> {

  final asset = 'assets/video.m4v';
  late VideoPlayerController controller;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    controller = VideoPlayerController.asset(asset)
      ..addListener(()=> setState(() {}))
      ..setLooping(true)
      ..initialize().then((value) => controller.play());
  }
  @override
  void dispose() {
    // TODO: implement dispose
    controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return VideoPlayerWidget(controller: controller);
  }
}
