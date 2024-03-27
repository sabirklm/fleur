import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../models/vehicle.dart';
import 'car_widget.dart';

class VehiclesVerticalCardView extends StatelessWidget {
  final String heading;
  final List<VehicleShortSummaries> vehicle;
  final dynamic Function(VehicleShortSummaries) onTapVehicle;

  const VehiclesVerticalCardView({
    super.key,
    required this.vehicle,
    required this.heading, required this.onTapVehicle,
  });

  @override
  Widget build(BuildContext context) {
    if (vehicle.isEmpty) {
      return const SizedBox();
    }
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 8.0, vertical: 8.0),
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
                padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 2),
                child: Text(
                  "More".toUpperCase(),
                  style: GoogleFonts.sen(
                    fontSize: 16,
                    color: Colors.white,
                  ),
                ),
              )
            ],
          ),
        ),
        ...List.generate(
          vehicle.length,
          (index) => GestureDetector(
             onTap: () {
                      onTapVehicle(
                        vehicle[index],
                      );
                    },
            child: VehicleCardType3(
              vehicle: vehicle[index],
            ),
          ),
        ),
      ],
    );
  }
}
