import 'package:fleur/models/vehicle.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../vehicle_details_screen.dart';

class VehicleDetailsCard extends StatelessWidget {
  final Vehicle vehicle;

  // ignore: use_key_in_widget_constructors
  const VehicleDetailsCard({super.key, required this.vehicle});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          margin: const EdgeInsets.symmetric(horizontal: 8.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              if (vehicle.image != null)
                ...List.generate(
                  vehicle.image!.length,
                  (index) {
                    if (index == 0) {
                      return Image.network(
                        vehicle.image![index],
                      );
                    }
                    return Image.network(
                      vehicle.image![index],
                    );
                  },
                ),
              const SizedBox(height: 8),
              Text(
                vehicle.name ?? "",
                style: GoogleFonts.sen(
                  fontSize: 22,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Text(
                vehicle.fuelType ?? "",
                style: GoogleFonts.sen(
                  fontSize: 16,
                ),
              ),
            ],
          ),
        ),
        Container(
          padding: const EdgeInsets.all(8),
          child: Table(
            border: TableBorder.all(
              color: Colors.grey,
            ),
            defaultVerticalAlignment: TableCellVerticalAlignment.middle,
            columnWidths: const {
              0: FlexColumnWidth(1),
              1: FlexColumnWidth(1),
            },
            children: [
              ...vehicle.specification.keys
                  .map(
                    (e) => TableRow(
                      decoration: BoxDecoration(
                        color: Colors.grey[200],
                        borderRadius: BorderRadius.circular(5),
                      ),
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text(
                            e,
                            style: GoogleFonts.sen(
                              fontWeight: FontWeight.bold,
                            ),
                            textAlign: TextAlign.center,
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text(
                            vehicle.specification[e] ?? "",
                            style: GoogleFonts.sen(
                              fontWeight: FontWeight.bold,
                            ),
                            textAlign: TextAlign.center,
                          ),
                        )
                      ],
                    ),
                  )
                  .toList(),
            ],
          ),
        ),
        Container(
          margin: const EdgeInsets.symmetric(horizontal: 8.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              if (vehicle.sections != null)
                ...List.generate(
                  vehicle.sections!.length,
                  (index) => SectionCard(
                    section: vehicle.sections![index],
                  ),
                ),
            ],
          ),
        )
      ],
    );
  }
}
