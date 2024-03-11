import 'package:fleur/models/vehicle.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class VehicleDetailsScreen extends StatefulWidget {
  final VehicleShortSummaries shortSummaries;
  const VehicleDetailsScreen({
    super.key,
    required this.shortSummaries,
  });

  @override
  State<VehicleDetailsScreen> createState() => _VehicleDetailsScreenState();
}

class _VehicleDetailsScreenState extends State<VehicleDetailsScreen> {
  final List<String> tabs = [
    "Tab 1",
    "Tab 2",
    "Tab 3",
    "Tab 4",
    "Tab 5",
    "Tab 6"
  ]; 

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
  }

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          '${widget.shortSummaries.name}',
          style: GoogleFonts.sen(),
          overflow: TextOverflow.ellipsis,
        ),
        // bottom: TabBar(
        //   tabAlignment: TabAlignment.start,
        //   isScrollable: true,
        //   tabs: tabs.map((tab) {
        //     return Tab(
        //       text: tab,
        //     );
        //   }).toList(),
        // ),
      ),
      body: ListView(
        children: [
          if (widget.shortSummaries.image != null)
            ...List.generate(
              widget.shortSummaries.image!.length,
              (index) => Image.network(
                widget.shortSummaries.image![index],
              ),
            ),
          ListTile(
            title: Text(
              widget.shortSummaries.name ?? "",
              style: GoogleFonts.sen(),
            ),
            subtitle: Text(
              widget.shortSummaries.fuelType ?? "",
              style: GoogleFonts.sen(),
            ),
          ),
          ListTile(
            title: Text(
              "",
              style: GoogleFonts.sen(),
            ),
            subtitle: Text(
              "",
              style: GoogleFonts.sen(),
            ),
          ),
          Container(
            padding: const EdgeInsets.all(10),
            child: Table(
              border: TableBorder.all(),
              defaultVerticalAlignment: TableCellVerticalAlignment.middle,
              columnWidths: const {
                0: FlexColumnWidth(1),
                1: FlexColumnWidth(1),
              },
              children: [
                ...List.generate(
                  4,
                  (rows) => TableRow(
                    children: [
                      ...List.generate(
                        2,
                        (index) => Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text(
                            "Column ${index + 1}",
                            style: GoogleFonts.sen(
                              fontWeight: FontWeight.bold,
                            ),
                            textAlign: TextAlign.center,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(height: 32),
        ],
      ),
    );
  }
}
