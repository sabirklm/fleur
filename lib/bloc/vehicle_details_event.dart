part of 'vehicle_details_bloc.dart';

@immutable
sealed class VehicleDetailsEvent {}

class GoToVehicleDetails extends VehicleDetailsEvent {
  final VehicleShortSummaries summary;
  final BuildContext context;

  GoToVehicleDetails({
    required this.summary,
    required this.context,
  });
}

class LoadVehicleDetails extends VehicleDetailsEvent {
  final String id;

  LoadVehicleDetails({
    required this.id,
  });
}
