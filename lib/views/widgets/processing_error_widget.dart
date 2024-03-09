import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ProcessingErrorWidget extends StatelessWidget {
  const ProcessingErrorWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          padding: const EdgeInsets.all(10.0),
          child: Column(
            children: [
              RichText(
                text: TextSpan(
                  text:
                      'We are having trouble processing your request right now. We are trying to continously improve our service. Please try again later.',
                  style: GoogleFonts.sen(
                    color: Colors.black38,
                    fontWeight: FontWeight.w700,
                    fontSize: 16.0,
                  ),
                  children: [
                    TextSpan(
                      text: " If you have some feedback write us at ",
                      style: GoogleFonts.sen(
                        color: Colors.black38,
                        fontWeight: FontWeight.w700,
                        fontSize: 16.0,
                      ),
                    ),
                    TextSpan(
                      text: "fleur@mozila.com",
                      style: GoogleFonts.sen(
                        color: Colors.blue.shade400,
                        fontWeight: FontWeight.w700,
                        fontSize: 16.0,
                        decoration: TextDecoration.underline,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
