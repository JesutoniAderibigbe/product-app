import 'package:app_new/VideoPlayerWidget.dart';
import 'package:video_player/video_player.dart';
import 'package:flutter/material.dart';

class VideoPlayer extends StatefulWidget {
  const VideoPlayer({ Key? key }) : super(key: key);

  @override
  State<VideoPlayer> createState() => _VideoPlayerState();
}

class _VideoPlayerState extends State<VideoPlayer> {
  final asset = 'assets/video.mp4';

late VideoPlayerController controller;

@override
void initState(){
  super.initState();
  controller = VideoPlayerController.asset(asset)
  ..addListener(()=> setState(() {}))
  ..setLooping(true)
  ..initialize().then((_) => controller.play());

@override
void dispose(){
  controller.dispose();
  super.dispose();
}




  
}

  @override
  Widget build(BuildContext context) {
   
    return VideoPlayerWidget(controller: controller,);
  }
}