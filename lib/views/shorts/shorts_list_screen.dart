import 'package:fleur/views/widgets/short_video_player.dart';
import 'package:flutter/material.dart';

var shortsList = <String>[
  "https://firebasestorage.googleapis.com/v0/b/fleur-a-new-journey.appspot.com/o/Feeds%2FAlways%20special%20with.mp4?alt=media&token=c1970ccf-29b3-4bd3-abb3-c445f4aee40b",
  "https://firebasestorage.googleapis.com/v0/b/fleur-a-new-journey.appspot.com/o/Feeds%2FReel1.mp4?alt=media&token=68b9fb57-14c4-40ec-bdef-4018d18005a3",
  "https://firebasestorage.googleapis.com/v0/b/fleur-a-new-journey.appspot.com/o/Feeds%2FAlways%20special%20with.mp4?alt=media&token=c1970ccf-29b3-4bd3-abb3-c445f4aee40b",
  "https://sample-videos.com/video321/mp4/720/big_buck_bunny_720p_1mb.mp4",
  "https://firebasestorage.googleapis.com/v0/b/fleur-a-new-journey.appspot.com/o/Feeds%2FAlways%20special%20with.mp4?alt=media&token=c1970ccf-29b3-4bd3-abb3-c445f4aee40b",
  "https://firebasestorage.googleapis.com/v0/b/fleur-a-new-journey.appspot.com/o/Feeds%2FReel1.mp4?alt=media&token=68b9fb57-14c4-40ec-bdef-4018d18005a3",
  "https://firebasestorage.googleapis.com/v0/b/fleur-a-new-journey.appspot.com/o/Feeds%2FAlways%20special%20with.mp4?alt=media&token=c1970ccf-29b3-4bd3-abb3-c445f4aee40b",
  "https://onlinetestcase.com/wp-content/uploads/2023/06/4.06-MB.mp4",
  "https://firebasestorage.googleapis.com/v0/b/fleur-a-new-journey.appspot.com/o/Feeds%2FAlways%20special%20with.mp4?alt=media&token=c1970ccf-29b3-4bd3-abb3-c445f4aee40b",
  "https://firebasestorage.googleapis.com/v0/b/fleur-a-new-journey.appspot.com/o/Feeds%2FReel1.mp4?alt=media&token=68b9fb57-14c4-40ec-bdef-4018d18005a3",
  "https://sample-videos.com/video321/mp4/480/big_buck_bunny_480p_10mb.mp4",
  "https://firebasestorage.googleapis.com/v0/b/fleur-a-new-journey.appspot.com/o/Feeds%2FAlways%20special%20with.mp4?alt=media&token=c1970ccf-29b3-4bd3-abb3-c445f4aee40b",
  "https://firebasestorage.googleapis.com/v0/b/fleur-a-new-journey.appspot.com/o/Feeds%2FReel1.mp4?alt=media&token=68b9fb57-14c4-40ec-bdef-4018d18005a3",
  "https://onlinetestcase.com/wp-content/uploads/2023/06/4.06-MB.mp4",
  "https://firebasestorage.googleapis.com/v0/b/fleur-a-new-journey.appspot.com/o/Feeds%2FReel1.mp4?alt=media&token=68b9fb57-14c4-40ec-bdef-4018d18005a3",
  "https://sample-videos.com/video321/mp4/720/big_buck_bunny_720p_5mb.mp4",
  "https://firebasestorage.googleapis.com/v0/b/fleur-a-new-journey.appspot.com/o/Feeds%2FAlways%20special%20with.mp4?alt=media&token=c1970ccf-29b3-4bd3-abb3-c445f4aee40b",
  "https://firebasestorage.googleapis.com/v0/b/fleur-a-new-journey.appspot.com/o/Feeds%2FReel1.mp4?alt=media&token=68b9fb57-14c4-40ec-bdef-4018d18005a3",
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
