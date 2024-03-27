import 'package:fleur/views/widgets/short_video_player.dart';
import 'package:flutter/material.dart';

var shortsList = <String>[
  "https://sample-videos.com/video321/mp4/720/big_buck_bunny_720p_1mb.mp4",
  "https://onlinetestcase.com/wp-content/uploads/2023/06/4.06-MB.mp4",
  "https://sample-videos.com/video321/mp4/480/big_buck_bunny_480p_10mb.mp4",
  "https://onlinetestcase.com/wp-content/uploads/2023/06/4.06-MB.mp4",
  "https://sample-videos.com/video321/mp4/720/big_buck_bunny_720p_5mb.mp4",
  "https://onlinetestcase.com/wp-content/uploads/2023/06/4.06-MB.mp4",
];

class ShortlistScreen extends StatefulWidget {
  const ShortlistScreen({super.key});

  @override
  State<ShortlistScreen> createState() => _ShortlistScreenState();
}

class _ShortlistScreenState extends State<ShortlistScreen>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(vsync: this);
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView(
        scrollDirection: Axis.vertical,
        children: [
          ...List.generate(
            shortsList.length,
            (index) => ShortVideoPlayer(videoUrl: shortsList[index]),
          )
        ],
      ),
    );
  }
}
