import 'dart:math';

import 'package:fleur/data/branded_car_data.dart';
import 'package:fleur/data/country_emoji.dart';
import 'package:fleur/utills/styles.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:google_fonts/google_fonts.dart';

import '../home/home_screen.dart';

class VehicleBrandsView extends StatelessWidget {
  const VehicleBrandsView({super.key});

  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;

    return Center(
      child: Wrap(
        children: [
          ...List.generate(
            max(brands.length, 7),
            (index) => GestureDetector(
              onTap: () {
                // Navigator.pushNamed(
                //   context,
                //   "/car-brand",
                //   arguments: brands[index],
                // );
               // Navigator.pushNamed(context, "/brand");
              },
              child: Container(
                padding: const EdgeInsets.all(10),
                margin:
                    const EdgeInsets.symmetric(vertical: 4.0, horizontal: 8),
                width: width / 3 - 16,
                height: width / 3 - 16,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: Colors
                      .primaries[Random().nextInt(Colors.primaries.length)]
                      .withOpacity(0.3),
                  // boxShadow: boxShadow,
                  border: Border.all(
                    color: Colors.black12,
                    width: 0.6,
                  ),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    // AppNetworkImage(
                    //   url: brands[index].image,
                    // ),
                    Image.asset("${brands[index].image}"),
                    FittedBox(
                      child: Text(
                        brands[index].name ?? "",
                        style: GoogleFonts.sen(
                          fontSize: 16,
                          color: Colors.blue,
                        ),
                      ),
                    ),
                    // Text(
                    //   "${carBrands[index]['country'] ?? ""} ${emojis[carBrands[index]['country'] ?? ""] ?? ""}",
                    //   style: GoogleFonts.sen(
                    //     fontSize: 16,
                    //   ),
                    // ),
                    // Text(
                    //   brands[index].description ?? "",
                    //   style: GoogleFonts.sen(
                    //     fontSize: 16,
                    //     color: Colors.black54,
                    //   ),
                    // ),
                  ],
                ),
              ),
            ),
          ),
          const SizedBox(
            height: 16,
          ),
        ],
      ),
    );
  }
}
