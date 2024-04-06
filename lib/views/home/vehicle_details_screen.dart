import 'package:fleur/models/vehicle.dart';
import 'package:fleur/services/vehicle_service.dart';
import 'package:fleur/utills/styles.dart';
import 'package:fleur/views/home/widgets/vehicle_details_card.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:shimmer/shimmer.dart';

import '../../bloc/vehicle_details_bloc.dart';

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
  final _vehicleDetailsBloc = VehicleDetailsBloc();

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
    // VehicleService().addVehicle(
    //   Vehicle(
    //     id: widget.shortSummaries.vehiclleId,
    //     name: widget.shortSummaries.vehiclleId,
    //     sections: sections,
    //     specification: specification,
    //     image: widget.shortSummaries.image,
    //     desc: widget.shortSummaries.vehiclleId,
    //     createdAt: DateTime.now().toString(),
    //     updatedAt: DateTime.now().toString(),
    //     fuelType: "Petrol",
    //     model: "2023",
    //   ),
    // );

    _vehicleDetailsBloc
        .add(LoadVehicleDetails(id: widget.shortSummaries.vehiclleId ?? ""));
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
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
          BlocBuilder<VehicleDetailsBloc, VehicleDetailsState>(
            bloc: _vehicleDetailsBloc,
            builder: (context, state) {
              if (state is VehicleDetailsLoading) {
                return Shimmer.fromColors(
                  baseColor: Colors.grey.shade200,
                  highlightColor: Colors.grey.shade500,
                  child: Column(
                    children: [
                      ...List.generate(
                        10,
                        (index) => Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: buildSquareShimmer(
                            color: Colors.grey,
                            width: width,
                            height: 120,
                          ),
                        ),
                      ),
                    ],
                  ),
                );
              }
              if (state is VehicleDetailsError) {
                return Text(state.message);
              }

              if (state is VehicleDetailsLoaded) {
                return VehicleDetailsCard(vehicle: state.vehicle);
              }
              return Text(
                'Something went wrong',
                style: GoogleFonts.sen(
                  fontSize: 22,
                  color: Colors.grey.shade700,
                ),
              );
            },
          ),
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
