import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../models/vehicle.dart';
import 'car_widget.dart';

class VehiclesHorizontalCardView extends StatelessWidget {
  final String heading;
  final List<VehicleShortSummaries> vehicle;
  final Function(VehicleShortSummaries) onTapVehicle;

  const VehiclesHorizontalCardView({
    super.key,
    required this.vehicle,
    required this.heading,
    required this.onTapVehicle,
  });

  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    if (vehicle.isEmpty) {
      return const SizedBox();
    }
    return SizedBox(
      width: width,
      height: 280,
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(
              horizontal: 8.0,
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  heading.toUpperCase(),
                  style: GoogleFonts.sen(
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(4),
                    color: Colors.deepPurple,
                  ),
                  padding:
                      const EdgeInsets.symmetric(horizontal: 8, vertical: 2),
                  child: Text(
                    "See All".toUpperCase(),
                    style: GoogleFonts.sen(
                      fontSize: 16,
                      color: Colors.white,
                    ),
                  ),
                )
              ],
            ),
          ),
          Expanded(
            child: ListView(
              scrollDirection: Axis.horizontal,
              children: [
                ...List.generate(
                  vehicle.length,
                  (index) => GestureDetector(
                    onTap: () {
                      //methods that will vehicle parameter
                      onTapVehicle(
                        vehicle[index],
                      );
                    },
                    child: VehicleWidget(
                      vehicle: vehicle[index],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
