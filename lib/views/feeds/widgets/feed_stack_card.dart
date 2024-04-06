import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class StackFeedCardType1 extends StatelessWidget {
  const StackFeedCardType1({super.key});

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(16),
      child: GestureDetector(
        onTap: () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => Scaffold(
                appBar: AppBar(
                  title: Text("Feed Details"),
                ),
              ),
            ),
          );
        },
        child: Container(
          margin: const EdgeInsets.only(left: 8, right: 8),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(16),
            // boxShadow: [
            //   BoxShadow(
            //     blurRadius: 20,
            //     color: Colors.grey.shade500,
            //     offset: Offset(12, 0),
            //   )
            // ],
          ),
          height: 320,
          width: 260,
          child: Stack(
            fit: StackFit.expand,
            children: [
              ClipRRect(
                borderRadius: BorderRadius.circular(16),
                child: Image.network(
                  "https://scoopempire.com/wp-content/uploads/2021/01/Copy-of-Scoop-Featured-Image-1-12.png",
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
                          (index) => Colors.black.withOpacity(index / 3),
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
    );
  }
}

class FeedCardType2 extends StatelessWidget {
  const FeedCardType2({super.key});

  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    return ClipRRect(
      borderRadius: BorderRadius.circular(16),
      child: GestureDetector(
        onTap: () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => Scaffold(
                appBar: AppBar(
                  title: Text("Feed Details"),
                ),
              ),
            ),
          );
        },
        child: Container(
          margin: const EdgeInsets.only(left: 8, top: 8, right: 8),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(16),
          ),
          height: width / 2,
          width: width,
          child: Stack(
            fit: StackFit.expand,
            children: [
              ClipRRect(
                borderRadius: BorderRadius.circular(16),
                child: Image.network(
                  "https://wallpapers.com/images/hd/peterbilt-sx1jrthiobj3gn0p.jpg",
                  fit: BoxFit.cover,
                ),
              ),
              Align(
                alignment: Alignment.center,
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
                          (index) => Colors.black.withOpacity(index / 3),
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
    );
  }
}
