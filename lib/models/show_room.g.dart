// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'show_room.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ShowRoom _$ShowRoomFromJson(Map<String, dynamic> json) => ShowRoom(
      name: json['name'] as String?,
      vehicleType: json['vehicleType'] as String?,
      address: json['address'] as String?,
      phone: json['phone'] as String?,
      email: json['email'] as String?,
      website: json['website'] as String?,
      latitude: (json['latitude'] as num?)?.toDouble(),
      longitude: (json['longitude'] as num?)?.toDouble(),
      ratings: (json['ratings'] as num?)?.toDouble(),
      feedbacks: (json['feedbacks'] as List<dynamic>?)
          ?.map((e) => Map<String, String>.from(e as Map))
          .toList(),
    );

Map<String, dynamic> _$ShowRoomToJson(ShowRoom instance) => <String, dynamic>{
      'name': instance.name,
      'vehicleType': instance.vehicleType,
      'address': instance.address,
      'phone': instance.phone,
      'email': instance.email,
      'website': instance.website,
      'latitude': instance.latitude,
      'longitude': instance.longitude,
      'ratings': instance.ratings,
      'feedbacks': instance.feedbacks,
    };
