part of 'service_center_bloc.dart';

@immutable
sealed class ServiceCenterState {}

final class ServiceCenterInitial extends ServiceCenterState {}

final class ServiceCenterLoading extends ServiceCenterState {}

final class ServiceCenterLoaded extends ServiceCenterState {
  final List<ServiceCenter> serviceCenters;

  ServiceCenterLoaded({required this.serviceCenters});
}

final class ServiceCenterError extends ServiceCenterState {
  final String message;

  ServiceCenterError(this.message);
}
