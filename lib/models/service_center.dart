import 'package:json_annotation/json_annotation.dart';
part 'service_center.g.dart';

// flutter pub run build_runner build';
@JsonSerializable(explicitToJson: true)
class ServiceCenter {
  String? id;
  final String? name;
  final String? vehicleType;
  final String? address;
  final String? phone;
  final String? email;
  final String? website;
  final double? latitude;
  final double? longitude;
  final double? ratings;
  final List<Map<String, String>>? feedbacks;
  final List<String>? images;
  final String? description;

  ServiceCenter({
    this.name,
    this.vehicleType,
    this.address,
    this.phone,
    this.email,
    this.website,
    this.latitude,
    this.longitude,
    this.ratings,
    this.feedbacks,
    this.images,
    this.description,
  });
  factory ServiceCenter.fromJson(Map<String, dynamic> json) =>
      _$ServiceCenterFromJson(json);
  Map<String, dynamic> toJson() => _$ServiceCenterToJson(this);
}
