import 'package:flutter/material.dart';
import 'package:video_player/video_player.dart';

class ShortVideoPlayer extends StatefulWidget {
  final String videoUrl;
  const ShortVideoPlayer({super.key, required this.videoUrl});

  @override
  State<ShortVideoPlayer> createState() => _ShortVideoPlayerState();
}

class _ShortVideoPlayerState extends State<ShortVideoPlayer> {
  late VideoPlayerController _controller;
  late Future<void> _initializeVideoPlayerFuture;
  bool hideControls = false;
  @override
  void initState() {
    super.initState();
    _controller = VideoPlayerController.networkUrl(
      Uri.parse(
        widget.videoUrl,
      ),
    );

    _initializeVideoPlayerFuture = _controller.initialize();
    _playPause();
  }

  @override
  void dispose() {
    _controller.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;

    // var height = width * 0.5625; // 16:9 aspect ratio

    return FutureBuilder(
      future: _initializeVideoPlayerFuture,
      builder: (context, snapshot) {
        if (snapshot.connectionState == ConnectionState.done) {
          return GestureDetector(
            onTap: () {
              setState(() {
                hideControls = !hideControls;
              });
            },
            child: Stack(
              children: [
                VideoPlayer(_controller),
                if (!hideControls)
                  Align(
                    alignment: Alignment.center,
                    child: AnimatedSwitcher(
                      duration: const Duration(seconds: 1),
                      child: Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(8),
                          color: Colors.white,
                          boxShadow: [
                            BoxShadow(
                              color: Colors.grey.withOpacity(0.5),
                              spreadRadius: 5,
                              blurRadius: 7,
                              offset: const Offset(0, 3),
                            ),
                          ],
                        ),
                        child: IconButton(
                          onPressed: () {
                            _playPause();
                          },
                          icon: Icon(
                            _controller.value.isPlaying
                                ? Icons.pause
                                : Icons.play_arrow,
                            size: 32,
                          ),
                        ),
                      ),
                    ),
                  ),

                // AspectRatio(
                //   aspectRatio: _controller.value.aspectRatio,
                //   child: VideoPlayer(_controller),
                // ),
              ],
            ),
          );
        } else {
          return const Center(
            child: CircularProgressIndicator(),
          );
        }
      },
    );
  }

  void _playPause() {
    setState(() {
      _controller.value.isPlaying ? _controller.pause() : _controller.play();
    });
  }
}
