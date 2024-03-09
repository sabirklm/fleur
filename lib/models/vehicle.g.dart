// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'vehicle.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Vehicle _$VehicleFromJson(Map<String, dynamic> json) => Vehicle(
      name: json['name'] as String?,
      model: json['model'] as String?,
      year: json['year'] as String?,
      fuelType: json['fuelType'] as String?,
      image:
          (json['image'] as List<dynamic>?)?.map((e) => e as String).toList(),
      id: json['id'] as String?,
      createdAt: json['createdAt'] as String?,
      updatedAt: json['updatedAt'] as String?,
      desc: json['desc'] as String?,
    );

Map<String, dynamic> _$VehicleToJson(Vehicle instance) => <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'model': instance.model,
      'year': instance.year,
      'fuelType': instance.fuelType,
      'image': instance.image,
      'createdAt': instance.createdAt,
      'updatedAt': instance.updatedAt,
      'desc': instance.desc,
    };

VehicleShortSummaries _$VehicleShortSummariesFromJson(
        Map<String, dynamic> json) =>
    VehicleShortSummaries(
      vehiclleId: json['vehiclleId'] as String?,
      name: json['name'] as String?,
      model: json['model'] as String?,
      year: json['year'] as String?,
      fuelType: json['fuelType'] as String?,
      image:
          (json['image'] as List<dynamic>?)?.map((e) => e as String).toList(),
      createdAt: json['createdAt'] as String?,
      updatedAt: json['updatedAt'] as String?,
    );

Map<String, dynamic> _$VehicleShortSummariesToJson(
        VehicleShortSummaries instance) =>
    <String, dynamic>{
      'vehiclleId': instance.vehiclleId,
      'name': instance.name,
      'model': instance.model,
      'year': instance.year,
      'fuelType': instance.fuelType,
      'image': instance.image,
      'createdAt': instance.createdAt,
      'updatedAt': instance.updatedAt,
    };

VehicleFullSummaries _$VehicleFullSummariesFromJson(
        Map<String, dynamic> json) =>
    VehicleFullSummaries(
      vehiclleId: json['vehiclleId'] as String?,
      name: json['name'] as String?,
      model: json['model'] as String?,
      year: json['year'] as String?,
      fuelType: json['fuelType'] as String?,
      image:
          (json['image'] as List<dynamic>?)?.map((e) => e as String).toList(),
      createdAt: json['createdAt'] as String?,
      updatedAt: json['updatedAt'] as String?,
    );

Map<String, dynamic> _$VehicleFullSummariesToJson(
        VehicleFullSummaries instance) =>
    <String, dynamic>{
      'vehiclleId': instance.vehiclleId,
      'name': instance.name,
      'model': instance.model,
      'year': instance.year,
      'fuelType': instance.fuelType,
      'image': instance.image,
      'createdAt': instance.createdAt,
      'updatedAt': instance.updatedAt,
    };
