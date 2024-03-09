// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'home_view_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

HomeViewModel _$HomeViewModelFromJson(Map<String, dynamic> json) =>
    HomeViewModel(
      viewType: json['viewType'] as String?,
      title: json['title'] as String?,
      vehicles: (json['vehicles'] as List<dynamic>?)
          ?.map(
              (e) => VehicleShortSummaries.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$HomeViewModelToJson(HomeViewModel instance) =>
    <String, dynamic>{
      'viewType': instance.viewType,
      'title': instance.title,
      'vehicles': instance.vehicles?.map((e) => e.toJson()).toList(),
    };
