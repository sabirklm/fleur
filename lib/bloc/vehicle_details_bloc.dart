import 'package:bloc/bloc.dart';
import 'package:fleur/models/vehicle.dart';
import 'package:fleur/services/vehicle_service.dart';
import 'package:flutter/material.dart';

import '../views/home/vehicle_details_screen.dart';

part 'vehicle_details_event.dart';
part 'vehicle_details_state.dart';

class VehicleDetailsBloc
    extends Bloc<VehicleDetailsEvent, VehicleDetailsState> {
  VehicleDetailsBloc() : super(VehicleDetailsInitial()) {
    on<GoToVehicleDetails>(_navigateToDetailsScreen);
    on<LoadVehicleDetails>(
      (event, emit) async {
        emit(VehicleDetailsLoading());
        await Future.delayed(const Duration(seconds: 3)); // Simulate network delay
        try {
          // print("ov6zsONhm5PVasHFN0Ju ${event.id}");
          var vehicle =
              await VehicleService().getVehicle("ov6zsONhm5PVasHFN0Ju");
          if (vehicle != null) {
            emit(VehicleDetailsLoaded(vehicle));
          } else {
            emit(VehicleDetailsError("Vehicle not found"));
          }
        } catch (e) {
          emit(VehicleDetailsError("Vehicle not found. Error: $e"));
        }
      },
    );
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
//ov6zsONhm5PVasHFN0Ju