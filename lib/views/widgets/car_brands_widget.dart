import 'package:fleur/data/branded_car_data.dart';
import 'package:fleur/data/country_emoji.dart';
import 'package:fleur/utills/styles.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class VehicleBrandsWidget extends StatelessWidget {
  const VehicleBrandsWidget({super.key});

  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        ...List.generate(
          carBrands.length,
          (index) => Container(
            padding: const EdgeInsets.all(10),
            margin: const EdgeInsets.symmetric(vertical: 4.0, horizontal: 8),
            width: width,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              color: Colors.white,
              boxShadow: boxShadow,
              border: Border.all(
                color: Colors.black12,
                width: 0.6,
              ),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                // AppNetworkImage(
                //   url: "${carBrands[index]['logo'] ?? ""}",
                // ),
                InkWell(
                  onTap: () {
                    Navigator.pushNamed(
                      context,
                      "/car-brand",
                      arguments: carBrands[index],
                    );
                  },
                  child: Text(
                    "${carBrands[index]['brand'] ?? ""}",
                    style: GoogleFonts.sen(
                      fontSize: 16,
                      color: Colors.blue,
                    ),
                  ),
                ),
                Text(
                  "${carBrands[index]['country'] ?? ""} ${emojis[carBrands[index]['country'] ?? ""] ?? ""}",
                  style: GoogleFonts.sen(
                    fontSize: 16,
                  ),
                ),
                Text(
                  "${carBrands[index]['description'] ?? ""}",
                  style: GoogleFonts.sen(
                    fontSize: 16,
                    color: Colors.black54,
                  ),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
