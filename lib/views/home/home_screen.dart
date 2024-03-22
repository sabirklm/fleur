import 'package:fleur/bloc/home_bloc.dart';
import 'package:fleur/models/home_view_model.dart';
import 'package:fleur/models/vehicle.dart';
import 'package:fleur/views/widgets/car_brands_widget.dart';
import 'package:fleur/views/widgets/vehicles_horizontal_card_view.dart';
import 'package:fleur/views/widgets/vehicles_vertical_column_card_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../bloc/vehicle_details_bloc.dart';
import '../search_screen.dart';
import '../widgets/processing_error_widget.dart';
import '../widgets/vehicles_vertical_card_view.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final _vehicleDetailsBloc = VehicleDetailsBloc();

  @override
  Widget build(BuildContext context) {
    // var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Fleur',
          style: GoogleFonts.sen(
            fontSize: 20,
            fontWeight: FontWeight.bold,
          ),
        ),
        actions: [
          IconButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => const SearchScreen(),
                ),
              );
            },
            icon: const Icon(
              Icons.search_sharp,
            ),
          ),
        ],
      ),
      body: Center(
        child: RefreshIndicator(
          onRefresh: () async {
            context.read<HomeBloc>().add(LoadHomeViewEvent());
          },
          child: ListView(
            shrinkWrap: true,
            children: [
              BlocBuilder<HomeBloc, HomeState>(
                builder: (context, state) {
                  if (state is HomeInitial) {
                    return const Center(
                      child: CircularProgressIndicator(strokeWidth: 1.4),
                    );
                  }
                  if (state is HomeLoading) {
                    return const Center(
                      child: CircularProgressIndicator(strokeWidth: 1.4),
                    );
                  }
                  if (state is HomeLoadedState) {
                    var data = state.homePage;
                    return Column(
                      children: [
                        ...List.generate(data.length, (index) {
                          var viewType = "${data[index].viewType}";
                          if (viewType == horizontalColumnVehicles) {}
                          if (viewType == horizontalRowVehicles) {}
                          if (viewType == verticalColumnVehicles) {
                            return VehiclesVerticalColumnCardView(
                              vehicle: data[index].vehicles ?? [],
                              heading: data[index].title ?? "",
                              onTapVehicle: (p0) {
                                var summaries =
                                    VehicleShortSummaries.fromJson(p0.toJson());

                                _vehicleDetailsBloc.add(
                                  GoToVehicleDetails(
                                      context: context, summary: summaries),
                                );
                              },
                            );
                          }
                          if (viewType == verticalRowVehicles) {
                            return VehiclesVerticalCardView(
                              vehicle: data[index].vehicles ?? [],
                              heading: data[index].title ?? "",
                              onTapVehicle: (p0) {
                                var summaries =
                                    VehicleShortSummaries.fromJson(p0.toJson());

                                _vehicleDetailsBloc.add(
                                  GoToVehicleDetails(
                                      context: context, summary: summaries),
                                );
                              },
                            );
                          }
                          return VehiclesHorizontalCardView(
                            vehicle: data[index].vehicles ?? [],
                            heading: data[index].title ?? "",
                            onTapVehicle: (p0) {
                              var summaries =
                                  VehicleShortSummaries.fromJson(p0.toJson());

                              _vehicleDetailsBloc.add(
                                GoToVehicleDetails(
                                    context: context, summary: summaries),
                              );
                            },
                          );
                        }),

                        // ...data.keys
                        //     .map(
                        //       (key) => VehiclesVerticalCardView(
                        //         vehicle: data[key] ?? [],
                        //         heading: key,
                        //         onTapVehicle: (p0) {
                        //           var summaries =
                        //               VehicleShortSummaries.fromJson(
                        //                   p0.toJson());

                        //           _vehicleDetailsBloc.add(
                        //             GoToVehicleDetails(
                        //                 context: context, summary: summaries),
                        //           );
                        //         },
                        //       ),
                        //     )
                        //     .toList(),
                      ],
                    );
                  }
                  if (state is HomeErrorState) {
                    return const ProcessingErrorWidget();
                  }
                  return Center(
                    child: Text(
                      "$state",
                      style: GoogleFonts.sen(
                        color: Colors.black38,
                        fontWeight: FontWeight.w700,
                        fontSize: 16.0,
                      ),
                    ),
                  );
                },
              ),
              Center(
                child: Wrap(
                  children: [
                    ...List.generate(
                      4,
                      (index) => Container(
                        padding: const EdgeInsets.all(16),
                        margin: const EdgeInsets.all(8),
                        width: (width / 2 - 16).abs(),
                        height: (width / 2 - 16).abs(),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(16),
                          color: Colors.pink.shade800,
                        ),
                        child: Stack(
                          children: [
                            Image.asset(
                              "assets/images/2254397.webp",
                            ),
                            Align(
                              alignment: Alignment.center,
                              child: Text(
                                "Comming Soon..",
                                style: GoogleFonts.sen(
                                  color: Colors.white,
                                  fontSize: 18,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 8),
              const VehicleBrandsWidget(),
            ],
          ),
        ),
      ),
    );
  }
}

class AppNetworkImage extends StatelessWidget {
  final String? url;

  const AppNetworkImage({
    super.key,
    this.url,
  });

  @override
  Widget build(BuildContext context) {
    if (url == null) return const SizedBox();
    if (url!.split(".").last.contains("svg")) {
      return const SizedBox();
      // return SvgPicture.network(
      //   url ?? "",
      //   errorBuilder: (context, error) => const Text('Image not found'),
      // );
    }
    return Column(
      children: [
        if (url != null)
          Image.network(
            url ?? "",
            errorBuilder: (_, __, ___) => const Text('Image not found'),
            width: 120,
            height: 120,
          ).animate().fadeIn(duration: 500.ms)
      ],
    );
  }
}
