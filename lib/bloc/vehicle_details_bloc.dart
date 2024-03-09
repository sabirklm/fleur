

import 'package:bloc/bloc.dart';
import 'package:fleur/models/vehicle.dart';
import 'package:flutter/material.dart';

import '../views/home/vehicle_details_screen.dart';

part 'vehicle_details_event.dart';
part 'vehicle_details_state.dart';

class VehicleDetailsBloc
    extends Bloc<VehicleDetailsEvent, VehicleDetailsState> {
  VehicleDetailsBloc() : super(VehicleDetailsInitial()) {
    on<GoToVehicleDetails>(_navigateToDetailsScreen);
  }
  _navigateToDetailsScreen(event, emit) {
    Navigator.push(
      event.context,
      MaterialPageRoute(
        builder: (context) => VehicleDetailsScreen(
          shortSummaries: event.summary,
        ),
      ),
    );
  }
}
