import 'package:fleur/bloc/service_center_bloc.dart';
import 'package:fleur/models/service_center.dart';
import 'package:fleur/utills/styles.dart';
import 'package:fleur/views/widgets/processing_error_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_fonts/google_fonts.dart';

import '../utills/sanckbar.dart';

class ServiceCenterScreen extends StatefulWidget {
  const ServiceCenterScreen({super.key});

  @override
  State<ServiceCenterScreen> createState() => _ServiceCenterScreenState();
}

class _ServiceCenterScreenState extends State<ServiceCenterScreen> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Service Center'),
      ),
      body: RefreshIndicator(
        onRefresh: () async {
          context.read<ServiceCenterBloc>().add(GetServiceCenterEvent());
        },
        child: Center(
          child: ListView(
            shrinkWrap: true,
            children: [
              BlocConsumer<ServiceCenterBloc, ServiceCenterState>(
                builder: (context, state) {
                  if (state is ServiceCenterLoading) {
                    return const Padding(
                      padding: EdgeInsets.all(8.0),
                      child: Center(
                        child: CircularProgressIndicator(
                          strokeWidth: 1.3,
                        ),
                      ),
                    );
                  } else if (state is ServiceCenterLoaded) {
                    return Column(
                      children: [
                        if (state.serviceCenters.isEmpty)
                          Text(
                            "No Service Center Found",
                            style: GoogleFonts.sen(
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ...List.generate(
                          state.serviceCenters.length,
                          (index) => ServiceCenterWidget(
                            serviceCenter: state.serviceCenters[index],
                            onTapServiceCenter: (p0) {
                              // ServiceCenterService().addServiceCenter(p0);
                            },
                          ),
                        ),
                      ],
                    );
                  } else if (state is ServiceCenterError) {
                    return Column(
                      children: [
                        const ProcessingErrorWidget(),
                        const SizedBox(height: 10),
                        Padding(
                          padding: const EdgeInsets.all(10.0),
                          child: Text(
                            "Error: ${state.message}",
                            style: GoogleFonts.sen(
                              color: Colors.black38,
                              fontWeight: FontWeight.w700,
                              fontSize: 16.0,
                            ),
                          ),
                        ),
                      ],
                    );
                  }
                  return const SizedBox();
                },
                listener: (context, state) {
                  SnackbarUtills.showSnackbar(
                      context: context, message: "$state");
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class ServiceCenterWidget extends StatelessWidget {
  final ServiceCenter serviceCenter;
  final void Function(ServiceCenter) onTapServiceCenter;
  const ServiceCenterWidget({
    super.key,
    required this.serviceCenter,
    required this.onTapServiceCenter,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        onTapServiceCenter(serviceCenter);
      },
      child: Container(
        margin: const EdgeInsets.symmetric(vertical: 4, horizontal: 10),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          border: Border.all(
            color: Colors.grey,
            width: .51,
          ),
          color: Colors.white,
          boxShadow: boxShadow,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            if (serviceCenter.images != null &&
                serviceCenter.images!.isNotEmpty)
              ClipRRect(
                borderRadius: const BorderRadius.only(
                  topLeft: Radius.circular(10),
                  topRight: Radius.circular(10),
                ),
                child: Image.network(
                  serviceCenter.images?.first ?? "",
                  height: 150,
                  width: double.infinity,
                  fit: BoxFit.cover,
                ).animate().fadeIn(duration: 500.ms),
              ),
            Padding(
              padding: const EdgeInsets.all(10),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    serviceCenter.name ?? "",
                    style: GoogleFonts.sen(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Row(
                    children: [
                      const Icon(
                        Icons.location_on,
                        size: 20,
                        color: Colors.blue,
                      ),
                      Expanded(
                        child: Text(
                          serviceCenter.address ?? "",
                          style: GoogleFonts.sen(),
                        ),
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      const Icon(
                        Icons.phone,
                        size: 20,
                        color: Colors.blue,
                      ),
                      const SizedBox(width: 8),
                      Expanded(
                        child: Text(
                          serviceCenter.phone ?? "",
                          style: GoogleFonts.sen(),
                        ),
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      const Icon(
                        Icons.email,
                        size: 20,
                        color: Colors.blue,
                      ),
                      const SizedBox(width: 8),
                      Expanded(
                        child: Text(
                          serviceCenter.email ?? "",
                          style: GoogleFonts.sen(),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
