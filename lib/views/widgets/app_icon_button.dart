import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class AppIconButton extends StatelessWidget {
  final String imgUrl;
  final String name;
  final void Function()? onPressed;
  const AppIconButton({
    super.key,
    required this.imgUrl,
    required this.name,
    this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      // margin: const EdgeInsets.symmetric(horizontal: 64),
      height: 48,
      decoration: const BoxDecoration(
        color: Colors.blue,
      ),
      child: MaterialButton(
        elevation: 0.0,
        color: Colors.purple,
        onPressed: onPressed,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SizedBox(
              height: 48,
              width: 46,
              child: Image.asset(imgUrl),
            ),
            const SizedBox(
              width: 16,
            ),
            Expanded(
              child: Text(
                name,
                style: GoogleFonts.sen(
                  fontSize: 16,
                  fontWeight: FontWeight.w700,
                  color: Colors.white,
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
