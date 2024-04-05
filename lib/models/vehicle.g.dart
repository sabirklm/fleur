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
      specification: (json['specification'] as Map<String, dynamic>?)?.map(
            (k, e) => MapEntry(k, e as String),
          ) ??
          const {},
      sections: (json['sections'] as List<dynamic>?)
              ?.map((e) => Section.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
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
      'specification': instance.specification,
      'sections': instance.sections,
      'desc': instance.desc,
    };

Section _$SectionFromJson(Map<String, dynamic> json) => Section(
      heading: json['heading'] as String?,
      desc: json['desc'] as String?,
      imgurl: json['imgurl'] as String?,
    );

Map<String, dynamic> _$SectionToJson(Section instance) => <String, dynamic>{
      'heading': instance.heading,
      'desc': instance.desc,
      'imgurl': instance.imgurl,
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
