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
  ]; // Example tabs

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
    return DefaultTabController(
      length: tabs.length,
      child: Scaffold(
        appBar: AppBar(
          title: const Text('Vehicle Details'),
          bottom: TabBar(
            tabAlignment: TabAlignment.start,
            isScrollable: true,
            tabs: tabs.map((tab) {
              return Tab(
                text: tab,
              );
            }).toList(),
          ),
        ),
        body: TabBarView(
          children: [
            ...List.generate(
              tabs.length - 1,
              (index) => Center(
                child: Text(
                  'Content for ${tabs[index]}',
                  style: GoogleFonts.sen(),
                ),
              ),
            ),
            // ...tabs.map(
            //   (String tab) {
            //     return Center(
            //       child: Text(
            //         'Content for $tab',
            //         style: GoogleFonts.sen(),
            //       ),
            //     );
            //   },
            // ).toList()
            ListView(
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
              ],
            )
          ],
        ),
      ),
    );
  }
}
