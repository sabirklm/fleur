import 'package:fleur/utills/styles.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../shorts/shorts_list_screen.dart';

class FeedView extends StatelessWidget {
  const FeedView({super.key});

  @override
  Widget build(BuildContext context) {
    // var width = MediaQuery.of(context).size.width;
    return Scaffold(
      body: ListView(
        children: [
          const SizedBox(height: 8),
          SizedBox(
            height: 320,
            width: 120,
            child: ListView(
              scrollDirection: Axis.horizontal,
              children: [
                ...List.generate(
                  3,
                  (index) => ClipRRect(
                    borderRadius: BorderRadius.circular(16),
                    child: Container(
                      margin: const EdgeInsets.only(
                        left: 8,
                      ),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(16),
                        boxShadow: boxShadow,
                      ),
                      height: 320,
                      width: 260,
                      child: Stack(
                        fit: StackFit.expand,
                        children: [
                          ClipRRect(
                            borderRadius: BorderRadius.circular(16),
                            child: Image.asset(
                              "assets/images/electric.png",
                              fit: BoxFit.cover,
                            ),
                          ),
                          Align(
                            alignment: Alignment.bottomLeft,
                            child: Container(
                              padding: const EdgeInsets.all(8.0),
                              decoration: BoxDecoration(
                                color: Colors.black.withOpacity(0.5),
                                borderRadius: const BorderRadius.only(
                                  bottomLeft: Radius.circular(16),
                                  bottomRight: Radius.circular(16),
                                ),
                                gradient: LinearGradient(
                                  begin: Alignment.topCenter,
                                  end: Alignment.bottomCenter,
                                  colors: [
                                    ...List.generate(
                                      3,
                                      (index) =>
                                          Colors.black.withOpacity(index / 3),
                                    ),
                                  ],
                                ),
                              ),
                              child: Text(
                                "Electric vehicles are future? Know more on elecric vehicles here",
                                style: GoogleFonts.sen(
                                  fontSize: 22,
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(height: 16),
          Container(
            padding: const EdgeInsets.all(8),
            margin: const EdgeInsets.symmetric(horizontal: 4.0, vertical: 8.0),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(10.0),
              boxShadow: boxShadow,
            ),
            child: Column(
              children: [
                Row(
                  children: [
                    Text(
                      "Create an annomous post",
                      style: GoogleFonts.sen(
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                        color: Colors.black,
                      ),
                    ),
                    const Spacer(),
                    IconButton(
                      onPressed: () {},
                      icon: const Icon(
                        Icons.post_add,
                        color: Colors.purple,
                        size: 30,
                      ),
                    ),
                  ],
                ),
                const Divider(),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    IconButton(
                      onPressed: () {},
                      icon: const Icon(
                        Icons.image,
                      ),
                    ),
                    IconButton(
                      onPressed: () {},
                      icon: const Icon(
                        Icons.video_call,
                      ),
                    ),
                    IconButton(
                      onPressed: () {},
                      icon: const Icon(
                        Icons.edit,
                      ),
                    ),
                  ],
                )
              ],
            ),
          ),
          ...List.generate(
            3,
            (index) => const FeedCard(),
          ),
          SizedBox(
            height: 220,
            child: ListView(
              scrollDirection: Axis.horizontal,
              children: [
                ...List.generate(
                  3,
                  (index) => const ShortsVideopreviewCard(),
                ),
              ],
            ),
          ),
          ...List.generate(
            3,
            (index) => const FeedCard(),
          ),
          SizedBox(
            height: 220,
            child: ListView(
              scrollDirection: Axis.horizontal,
              children: [
                ...List.generate(
                  3,
                  (index) => const ShortsVideopreviewCard(),
                ),
              ],
            ),
          ),
          ...List.generate(
            3,
            (index) => const FeedCard(),
          ),
          SizedBox(
            height: 220,
            child: ListView(
              scrollDirection: Axis.horizontal,
              children: [
                ...List.generate(
                  3,
                  (index) => const ShortsVideopreviewCard(),
                ),
              ],
            ),
          ),
          ...List.generate(
            3,
            (index) => const FeedCard(),
          ),
        ],
      ),
    );
  }
}

class ShortsVideopreviewCard extends StatelessWidget {
  const ShortsVideopreviewCard({super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => const ShortlistScreen(),
          ),
        );
      },
      child: Container(
        margin: const EdgeInsets.symmetric(horizontal: 4.0, vertical: 16.0),
        width: 120,
        height: 180,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10.0),
          color: Colors.white,
          boxShadow: boxShadow,
        ),
        child: ClipRRect(
          borderRadius: BorderRadius.circular(10.0),
          child: Image.network(
            "https://www.daidegasforum.com/images1/1217/mercedes-sls-black-series-gif.gif",
            fit: BoxFit.cover,
          ),
        ),
      ),
    );
  }
}

class FeedCard extends StatelessWidget {
  const FeedCard({super.key});

  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 4.0, vertical: 8.0),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(0.0),
        boxShadow: const [
          BoxShadow(
            color: Colors.black26,
            offset: Offset(0, 2),
            blurRadius: 6.0,
          ),
        ],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              children: [
                const CircleAvatar(
                  radius: 18.0,
                  backgroundColor: Colors.grey,
                  child: Icon(
                    Icons.person,
                    color: Colors.white,
                  ),
                ),
                const SizedBox(
                  width: 10.0,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Anonymus",
                      style: GoogleFonts.sen(
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Text(
                      "10 min ago",
                      style: GoogleFonts.sen(
                        fontSize: 12,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
                const Spacer(),
                IconButton(
                  onPressed: () {
                    showBottomSheet(
                      context: context,
                      builder: (context) {
                        return ClipRRect(
                          borderRadius: const BorderRadius.only(
                            topLeft: Radius.circular(20.0),
                            topRight: Radius.circular(20.0),
                          ),
                          child: Container(
                            height: 180,
                            decoration: BoxDecoration(
                              color: Colors.grey.shade300,
                            ),
                            child: Column(
                              children: [
                                ListTile(
                                  onTap: () {
                                    Navigator.pop(context);
                                  },
                                  leading: const Icon(Icons.report),
                                  title: Text(
                                    "Report",
                                    style: GoogleFonts.sen(
                                      fontSize: 16,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                ),
                                ListTile(
                                  onTap: () {
                                    Navigator.pop(context);
                                  },
                                  leading: const Icon(Icons.hide_image),
                                  title: Text(
                                    "Hide",
                                    style: GoogleFonts.sen(
                                      fontSize: 16,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                ),
                                ListTile(
                                  onTap: () {
                                    Navigator.pop(context);
                                  },
                                  leading: const Icon(Icons.block),
                                  title: Text(
                                    "Unfollow",
                                    style: GoogleFonts.sen(
                                      fontSize: 16,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        );
                      },
                    );
                  },
                  icon: const Icon(
                    Icons.more_vert,
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 8.0),
            child: Text(
              "Mahindra Thar 2022",
              style: GoogleFonts.sen(
                fontSize: 16,
                fontWeight: FontWeight.w400,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 8.0),
            child: Wrap(
              children: [
                ...List.generate(
                  4,
                  (index) => Text(
                    "#${index + 1} ",
                    style: GoogleFonts.sen(
                      fontSize: 14,
                      color: Colors.blue,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(
            height: 10.0,
          ),
          SizedBox(
            height: height * 0.6,
            width: width,
            child: Image.network(
              "https://w0.peakpx.com/wallpaper/49/418/HD-wallpaper-mahindra-thar-car-dark-clouds-background-black-car.jpg",
              fit: BoxFit.cover,
            ),
          ),
          Row(
            children: [
              IconButton(
                onPressed: () {},
                icon: const Icon(
                  Icons.favorite_border,
                ),
              ),
              IconButton(
                onPressed: () {},
                icon: const Icon(
                  Icons.share,
                ),
              ),
              IconButton(
                onPressed: () {},
                icon: const Icon(
                  Icons.bookmark_border,
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}
