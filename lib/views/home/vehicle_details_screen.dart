import 'package:fleur/models/vehicle.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

var specification = <String, String>{
  "Fuel Type": "Hybrid",
  "Engine": "2487 cc",
  "Power and Torque": "190 bhp & 242 Nm",
  "DriveTrain": "4WD / AWD",
};
var sections = <Section>[
  Section(
    heading: "Overview",
    desc:
        "Lorepsum dolor sit amet, consectetur adipiscing elit. Nulla vitae elit libero, a pharetra augue. Aenean lacinia bibendum nulla sed consectetur. Donec sed odio dui. Nulla at volutpat diam. Cras feugiat consequat urna, nec luctus nisl tincidunt in. Cras pharetra convallis posuere. Donec eget odio quam. Nulla facilisi. Donec eget odio quam. Nulla facilisi. Donec eget odio quam. Nulla facilisi. Donec eget odio quam. Nulla facilisi. Donec eget odio quam. Nulla facilisi. Donec eget odio quam. Nulla facilisi. Donec eget odio quam. Nulla facilisi. Donec eget odio quam. Nulla facilisi. Donec eget odio quam. Nulla facilisi. Donec eget odio quam. Nulla facilisi. Donec eget odio quam. Nulla facilisi. Donec eget odio quam. Nulla facilisi. Donec eget odio quam. Nulla facilisi. Donec eget odio quam. Nulla facilisi. Donec eget odio quam. Nulla facilisi. Donec eget odio quam. Nulla facilisi. Donec eget odio quam. Nulla facilisi. Donec eget odio quam. Nulla facilisi. Donec eget odio quam. Nulla facilisi. Donec eget odio quam. Nulla facilisi. Donec eget odio quam. Nulla facilisi. Donec eget odio quam. Nulla facilisi. Donec eget odio quam. Nulla facilisi. Donec eget odio quam. Nulla facilisi. Donec eget odio quam. Nulla facilisi. Donec eget odio quam. Nulla facilisi. Donec eget odio quam. Nulla facilisi. Donec eget odio quam. Nulla facilisi. Donec eget odio quam. Nulla facilisi. Donec eget odio quam. Nulla facilisi. Donec eget odio quam. Nulla facilisi. Donec eget odio quam. Nulla facilisi. Donec eget odio quam. Nulla facilisi. Donec eget odio quam. Nulla facilisi. Donec eget odio quam. Nulla facilisi. Donec eget odio quam. Nulla facilisi. Donec eget odio quam. Nulla facilisi. Donec eget odio quam. Nulla facilisi. Donec eget odio quam. Nulla facilisi. Donec eget odio quam.",
  ),
  Section(
    heading: "Overview",
    desc:
        "Lorepsum dolor sit amet, consectetur adipiscing elit. Nulla vitae elit libero, a pharetra augue. Aenean lacinia bibendum nulla sed consectetur. Donec sed odio dui. Nulla at volutpat diam. Cras feugiat consequat urna, nec luctus nisl tincidunt in. Cras pharetra convallis posuere. Donec eget odio quam. Nulla facilisi. Donec eget odio quam. Nulla facilisi. Donec eget odio quam. Nulla facilisi. Donec eget odio quam. Nulla facilisi. Donec eget odio quam. Nulla facilisi. Donec eget odio quam. Nulla facilisi. Donec eget odio quam. Nulla facilisi. Donec eget odio quam. Nulla facilisi. Donec eget odio quam. Nulla facilisi. Donec eget odio quam. Nulla facilisi. Donec eget odio quam. Nulla facilisi. Donec eget odio quam. Nulla facilisi. Donec eget odio quam. Nulla facilisi. Donec eget odio quam. Nulla facilisi. Donec eget odio quam. Nulla facilisi. Donec eget odio quam. Nulla facilisi. Donec eget odio quam. Nulla facilisi. Donec eget odio quam. Nulla facilisi. Donec eget odio quam. Nulla facilisi. Donec eget odio quam. Nulla facilisi. Donec eget odio quam. Nulla facilisi. Donec eget odio quam. Nulla facilisi. Donec eget odio quam. Nulla facilisi. Donec eget odio quam. Nulla facilisi. Donec eget odio quam. Nulla facilisi. Donec eget odio quam. Nulla facilisi. Donec eget odio quam. Nulla facilisi. Donec eget odio quam. Nulla facilisi. Donec eget odio quam. Nulla facilisi. Donec eget odio quam. Nulla facilisi. Donec eget odio quam. Nulla facilisi. Donec eget odio quam. Nulla facilisi. Donec eget odio quam. Nulla facilisi. Donec eget odio quam. Nulla facilisi. Donec eget odio quam. Nulla facilisi. Donec eget odio quam. Nulla facilisi. Donec eget odio quam. Nulla facilisi. Donec eget odio quam. Nulla facilisi. Donec eget odio quam. Nulla facilisi. Donec eget odio quam.",
  ),
  Section(
    heading: "Specifications",
    desc:
        "Lorepsum dolor sit amet, consectetur adipiscing elit. Nulla vitae elit libero, a pharetra augue. Aenean lacinia bibendum nulla sed consectetur. Donec sed odio dui. Nulla at volutpat diam. Cras feugiat consequat urna, nec luctus nisl tincidunt in. Cras pharetra convallis posuere. Donec eget odio quam. Nulla facilisi. Donec eget odio quam. Nulla facilisi. Donec eget odio quam. Nulla facilisi. Donec eget odio quam. Nulla facilisi. Donec eget odio quam. Nulla facilisi. Donec eget odio quam. Nulla facilisi. Donec eget odio quam. Nulla facilisi. Donec eget odio quam. Nulla facilisi. Donec eget odio quam. Nulla facilisi. Donec eget odio quam. Nulla facilisi. Donec eget odio quam. Nulla facilisi. Donec eget odio quam. Nulla facilisi. Donec eget odio quam. Nulla facilisi. Donec eget odio quam. Nulla facilisi. Donec eget odio quam. Nulla facilisi. Donec eget odio quam. Nulla facilisi. Donec eget odio quam. Nulla facilisi. Donec eget odio quam. Nulla facilisi. Donec eget odio quam. Nulla facilisi. Donec eget odio quam. Nulla facilisi. Donec eget odio quam. Nulla facilisi. Donec eget odio quam. Nulla facilisi. Donec eget odio quam. Nulla facilisi. Donec eget odio quam. Nulla facilisi. Donec eget odio quam. Nulla facilisi. Donec eget odio quam. Nulla facilisi. Donec eget odio quam. Nulla facilisi. Donec eget odio quam. Nulla facilisi. Donec eget odio quam. Nulla facilisi. Donec eget odio quam. Nulla facilisi. Donec eget odio quam. Nulla facilisi. Donec eget odio quam. Nulla facilisi. Donec eget odio quam. Nulla facilisi. Donec eget odio quam. Nulla facilisi. Donec eget odio quam. Nulla facilisi. Donec eget odio quam. Nulla facilisi. Donec eget odio quam. Nulla facilisi. Donec eget odio quam. Nulla facilisi. Donec eget odio quam. Nulla facilisi. Donec eget odio quam.",
    imgurl:
        "https://www.google.com/images/branding/googlelogo/2x/googlelogo_color_272x92dp.png",
  ),
  Section(
    heading: "Specifications",
    desc:
        "Lorepsum dolor sit amet, consectetur adipiscing elit. Nulla vitae elit libero, a pharetra augue. Aenean lacinia bibendum nulla sed consectetur. Donec sed odio dui. Nulla at volutpat diam. Cras feugiat consequat urna, nec luctus nisl tincidunt in. Cras pharetra convallis posuere. Donec eget odio quam. Nulla facilisi. Donec eget odio quam. Nulla facilisi. Donec eget odio quam. Nulla facilisi. Donec eget odio quam. Nulla facilisi. Donec eget odio quam. Nulla facilisi. Donec eget odio quam. Nulla facilisi. Donec eget odio quam. Nulla facilisi. Donec eget odio quam. Nulla facilisi. Donec eget odio quam. Nulla facilisi. Donec eget odio quam. Nulla facilisi. Donec eget odio quam. Nulla facilisi. Donec eget odio quam. Nulla facilisi. Donec eget odio quam. Nulla facilisi. Donec eget odio quam. Nulla facilisi. Donec eget odio quam. Nulla facilisi. Donec eget odio quam. Nulla facilisi. Donec eget odio quam. Nulla facilisi. Donec eget odio quam. Nulla facilisi. Donec eget odio quam. Nulla facilisi. Donec eget odio quam. Nulla facilisi. Donec eget odio quam. Nulla facilisi. Donec eget odio quam. Nulla facilisi. Donec eget odio quam. Nulla facilisi. Donec eget odio quam. Nulla facilisi. Donec eget odio quam. Nulla facilisi. Donec eget odio quam. Nulla facilisi. Donec eget odio quam. Nulla facilisi. Donec eget odio quam. Nulla facilisi. Donec eget odio quam. Nulla facilisi. Donec eget odio quam. Nulla facilisi. Donec eget odio quam. Nulla facilisi. Donec eget odio quam. Nulla facilisi. Donec eget odio quam. Nulla facilisi. Donec eget odio quam. Nulla facilisi. Donec eget odio quam. Nulla facilisi. Donec eget odio quam. Nulla facilisi. Donec eget odio quam. Nulla facilisi. Donec eget odio quam. Nulla facilisi. Donec eget odio quam. Nulla facilisi. Donec eget odio quam.",
    imgurl:
        "https://www.google.com/images/branding/googlelogo/2x/googlelogo_color_272x92dp.png",
  ),
];

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
          Container(
            margin: const EdgeInsets.symmetric(horizontal: 8.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                if (widget.shortSummaries.image != null)
                  ...List.generate(
                    widget.shortSummaries.image!.length,
                    (index) {
                      if (index == 0) {
                        return Image.network(
                          widget.shortSummaries.image![index],
                        );
                      }
                      return Image.network(
                        widget.shortSummaries.image![index],
                      );
                    },
                  ),
                const SizedBox(height: 8),
                Text(
                  widget.shortSummaries.name ?? "",
                  style: GoogleFonts.sen(),
                ),
                Text(
                  widget.shortSummaries.fuelType ?? "",
                  style: GoogleFonts.sen(),
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
                ...specification.keys
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
                              specification[e] ?? "",
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
                ...List.generate(
                  sections.length,
                  (index) => SectionCard(
                    section: sections[index],
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}

class SectionCard extends StatelessWidget {
  final Section section;
  const SectionCard({super.key, required this.section});

  @override
  Widget build(BuildContext context) {
    var heading = section.heading;
    var desc = section.desc;
    var imgurl = section.imgurl;
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        if (heading != null)
          Text(
            heading,
            style: GoogleFonts.sen(
              fontWeight: FontWeight.bold,
              fontSize: 18,
            ),
          ),
        const SizedBox(height: 8),
        if (desc != null)
          Text(
            desc,
            style: GoogleFonts.sen(
              fontSize: 16,
              color: Colors.grey.shade700,
            ),
          ),
        if (imgurl != null)
          Center(
            child: Image.network(imgurl),
          ),
        const SizedBox(height: 16),
      ],
    );
  }
}
