import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class FeedView extends StatelessWidget {
  const FeedView({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        Padding(
          padding: const EdgeInsets.all(32.0),
          child: Image.asset(
            "assets/images/nodata.png",
          ),
        ),
        const SizedBox(
          height: 20,
        ),
        Center(
          child: Text(
            "No data available",
            style: GoogleFonts.sen(
              fontSize: 20,
              fontWeight: FontWeight.bold,
            ),
          ),
        )
      ],
    );
  }
}
