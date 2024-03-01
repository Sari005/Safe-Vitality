import 'package:flutter/material.dart';
import 'package:appinio_video_player/appinio_video_player.dart';

class VideoBleeding extends StatefulWidget {
  const VideoBleeding({super.key});

  @override
  State<VideoBleeding> createState() => _VideoBleedingState();
}

class _VideoBleedingState extends State<VideoBleeding> {
  late CustomVideoPlayerController _customVideoPlayerController;

  String assetVideoPath = 'assets/video/drabc1.mp4';

  @override
  void initState() {
    super.initState();
    initializeVideoPlayer();
  }

  void initializeVideoPlayer() {
    CachedVideoPlayerController _videoPlayerController;
    _videoPlayerController = CachedVideoPlayerController.asset(assetVideoPath)
      ..initialize().then((value) {
        setState(() {});
      });
    _customVideoPlayerController = CustomVideoPlayerController(
        context: context, videoPlayerController: _videoPlayerController);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: CustomVideoPlayer(
            customVideoPlayerController: _customVideoPlayerController),
      ),
    );
  }
}
