import 'package:fleur/models/vehicle.dart';
import 'package:fleur/utills/styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:google_fonts/google_fonts.dart';

class VehicleWidget extends StatelessWidget {
  final VehicleShortSummaries vehicle;
  const VehicleWidget({
    super.key,
    required this.vehicle,
  });

  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    return Container(
      width: width > 225 * 2 ? 225 : width * 0.45,
      padding: const EdgeInsets.all(10),
      margin: const EdgeInsets.symmetric(vertical: 16, horizontal: 10),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(10),
        boxShadow: boxShadow,
        // boxShadow: [
        //   BoxShadow(
        //     color: Colors.grey.withOpacity(0.5),
        //     spreadRadius: 1,
        //     blurRadius: 3,
        //     offset: const Offset(1, 7),
        //   ),
        // ],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          if (vehicle.image != null && vehicle.image!.isNotEmpty)
            ClipRRect(
              borderRadius: BorderRadius.circular(10),
              child: Image.network(
                vehicle.image!.first,
                height: 100,
                width: width * 0.45,
                fit: BoxFit.fitWidth,
                loadingBuilder: (context, child, loadingProgress) {
                  // var progress = loadingProgress?.cumulativeBytesLoaded;
                  // var total = loadingProgress?.expectedTotalBytes;
                  if (loadingProgress == null) return child;
                  // double opacity = min(1 - ((progress ?? 0) / (total ?? 1)), 1);
                  return Container(
                    color: Colors.grey,
                    height: 100,
                    width: width * 0.45,
                  ).animate().shimmer(duration: 1000.ms);
                },
              ).animate().fadeIn(duration: 1000.ms),
            ),
          Text(
            vehicle.name ?? "",
            style: GoogleFonts.sen(),
          ),
          Text(
            vehicle.model ?? "",
            style: GoogleFonts.sen(),
          ),
          Text(
            vehicle.fuelType ?? "",
            style: GoogleFonts.sen(),
          ),
        ],
      ),
    );
  }
}

class VehicleCardType2 extends StatelessWidget {
  final VehicleShortSummaries vehicle;
  const VehicleCardType2({
    super.key,
    required this.vehicle,
  });

  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    return Container(
      // padding: const EdgeInsets.all(10),
      margin: const EdgeInsets.all(8),
      width: width * 0.99,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(0),
        color: Colors.white,
        boxShadow: boxShadow,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          if (vehicle.image != null && vehicle.image!.isNotEmpty)
            Center(
              child: ClipRRect(
                borderRadius: BorderRadius.circular(0),
                child: Image.network(
                  vehicle.image!.first,
                  height: 200,
                  width: width * 0.99,
                  fit: BoxFit.fitWidth,
                  loadingBuilder: (context, child, loadingProgress) {
                    // var progress = loadingProgress?.cumulativeBytesLoaded;
                    // var total = loadingProgress?.expectedTotalBytes;
                    if (loadingProgress == null) return child;
                    return Container(
                      color: Colors.grey,
                      height: 200,
                      width: width * 0.99,
                    ).animate().shimmer(duration: 1000.ms);
                  },
                ).animate().fadeIn(duration: 500.ms),
              ),
            ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "${vehicle.name}",
                  style: GoogleFonts.sen(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Text(
                  "${vehicle.model}",
                  style: GoogleFonts.sen(
                    fontSize: 16,
                    color: Colors.black54,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Text(
                  "${vehicle.fuelType}",
                  style: GoogleFonts.sen(
                      fontSize: 16,
                      color: Colors.black54,
                      fontWeight: FontWeight.bold),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class VehicleCardType3 extends StatelessWidget {
  final VehicleShortSummaries vehicle;
  const VehicleCardType3({
    super.key,
    required this.vehicle,
  });

  @override
  Widget build(BuildContext context) {
    // var width = MediaQuery.of(context).size.width;
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        // margin: const EdgeInsets.all(8),

        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(0),
          color: Colors.white,
          boxShadow: boxShadow,
        ),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            if (vehicle.image != null && vehicle.image!.isNotEmpty)
              Image.network(
                vehicle.image!.first,
                height: 100,
                width: 140,
                fit: BoxFit.cover,
              ).animate().fadeIn(duration: 600.ms),
            const SizedBox(
              width: 8,
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "${vehicle.name}",
                  style: GoogleFonts.sen(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Text(
                  "${vehicle.model}",
                  style: GoogleFonts.sen(
                    fontSize: 16,
                    color: Colors.black54,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Text(
                  "${vehicle.fuelType}",
                  style: GoogleFonts.sen(
                    fontSize: 16,
                    color: Colors.black54,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
