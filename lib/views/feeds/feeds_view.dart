import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class FeedView extends StatelessWidget {
  const FeedView({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        // Padding(
        //   padding: const EdgeInsets.all(32.0),
        //   child: Image.asset(
        //     "assets/images/nodata.png",
        //   ),
        // ),
        // const SizedBox(
        //   height: 20,
        // ),
        // Center(
        //   child: Text(
        //     "No data available",
        //     style: GoogleFonts.sen(
        //       fontSize: 20,
        //       fontWeight: FontWeight.bold,
        //     ),
        //   ),
        // )
        ...List.generate(
          3,
          (index) => const FeedCard(),
        ),
        SizedBox(
          height: 180,
          child: ListView(
            scrollDirection: Axis.horizontal,
            children: [
              ...List.generate(
                3,
                (index) => const ShortsVideoCard(),
              ),
            ],
          ),
        ),
        ...List.generate(
          3,
          (index) => const FeedCard(),
        ),
      ],
    );
  }
}

class ShortsVideoCard extends StatelessWidget {
  const ShortsVideoCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 16.0),
      width: 120,
      height: 160,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10.0),
        color: Colors.grey,
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
      margin: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 8.0),
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
                  onPressed: () {},
                  icon: const Icon(
                    Icons.more_horiz,
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
