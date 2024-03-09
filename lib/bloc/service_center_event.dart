part of 'service_center_bloc.dart';

@immutable
sealed class ServiceCenterEvent {}

final class GetServiceCenterEvent extends ServiceCenterEvent {}
