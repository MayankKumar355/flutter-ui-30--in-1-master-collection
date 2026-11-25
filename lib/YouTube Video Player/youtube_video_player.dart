import 'package:flutter/material.dart';
import 'package:youtube_player_flutter/youtube_player_flutter.dart';

class YoutubeVideoPlayerFlutter extends StatefulWidget {
  const YoutubeVideoPlayerFlutter({super.key});

  @override
  State<YoutubeVideoPlayerFlutter> createState() =>
      _YoutubeVideoPlayerFlutterState();
}
class _YoutubeVideoPlayerFlutterState extends State<YoutubeVideoPlayerFlutter> {
  final videoURL = "https://youtu.be/yz2Iryuln2s?si=42oSyTnbno-xCkHO";
  late YoutubePlayerController playerController;

  @override
  void initState() {
    super.initState();
    final videoId = YoutubePlayerController.convertUrlToId(videoURL) ?? "";
    playerController = YoutubePlayerController.fromVideoId(
      videoId: videoId,
      autoPlay: false,
      params: const YoutubePlayerParams(
        showControls: true,
        showFullscreenButton: false,
      ),
    );
  }

  @override
  void dispose() {
    playerController.close();
    super.dispose();
  }

  Future<void> seekForward() async {
    final currentPosition = await playerController.currentTime;
    final duration = await playerController.duration;
    if (currentPosition + 10 < duration) {
      playerController.seekTo(seconds: currentPosition + 10);
    } else {
      playerController.seekTo(seconds: duration);
    }
  }

  Future<void> seekBackward() async {
    final currentPosition = await playerController.currentTime;
    if (currentPosition - 10 >= 0) {
      playerController.seekTo(seconds: currentPosition - 10);
    } else {
      playerController.seekTo(seconds: 0);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        foregroundColor: Colors.white,
        title: const Text("Play YouTube Video on Flutter App"),
      ),
      body: Column(
        children: [
          YoutubePlayer(
            controller: playerController,
          ),
          const SizedBox(height: 20),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              IconButton(
                onPressed: seekBackward,
                icon: const Icon(
                  Icons.replay_10,
                  size: 40,
                  color: Colors.black87,
                ),
              ),
              const SizedBox(width: 30),
              IconButton(
                onPressed: seekForward,
                icon: const Icon(
                  Icons.forward_10,
                  size: 40,
                  color: Colors.black87,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}