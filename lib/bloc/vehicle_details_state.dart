part of 'vehicle_details_bloc.dart';

@immutable
sealed class VehicleDetailsState {}

final class VehicleDetailsInitial extends VehicleDetailsState {}

class VehicleDetailsLoaded extends VehicleDetailsState {
  final Vehicle vehicle;

  VehicleDetailsLoaded(this.vehicle);
}

class VehicleDetailsError extends VehicleDetailsState {
  final String message;

  VehicleDetailsError(this.message);
}

//VehicleDetailsLoading
class VehicleDetailsLoading extends VehicleDetailsState {}