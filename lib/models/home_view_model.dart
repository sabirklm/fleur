import 'package:fleur/models/vehicle.dart';
import 'package:json_annotation/json_annotation.dart';

part 'home_view_model.g.dart';

const String horizontalColumnVehicles = 'horizontal_column_vehicles';
const String horizontalRowVehicles = 'horizontal_row_vehicles';
const String verticalColumnVehicles = 'vertical_column_vehicles';
const String verticalRowVehicles = 'vertical_row_vehicles';
/// HomeViewModel
@JsonSerializable(explicitToJson: true)
class HomeViewModel {
  String? id;
  final String? viewType;
  final String? title;
  final List<VehicleShortSummaries>? vehicles;

  HomeViewModel({
    this.viewType,
    this.title,
    this.vehicles,
  });
  factory HomeViewModel.fromJson(Map<String, dynamic> json) =>
      _$HomeViewModelFromJson(json);
  Map<String, dynamic> toJson() => _$HomeViewModelToJson(this);
}
