import 'dart:math';

import 'package:json_annotation/json_annotation.dart';

part 'vehicle.g.dart';

// flutter pub run build_runner build
// flutter pub run build_runner watch
// flutter pub run build_runner clean<ctrl63> home/cloudcraftz/Flutter Projects/Fleur-Applications/fleur/lib/models/vehicle.g.dart

@JsonSerializable()
class Vehicle {
  String? id;
  String? name;
  String? model;
  String? year;
  String? fuelType;
  List<String>? image;
  String? createdAt;
  String? updatedAt;

  String? desc;

  Vehicle({
    this.name,
    this.model,
    this.year,
    this.fuelType,
    this.image,
    this.id,
    this.createdAt,
    this.updatedAt,
    this.desc,
  });

  factory Vehicle.fromJson(Map<String, dynamic> json) =>
      _$VehicleFromJson(json);

  Map<String, dynamic> toJson() => _$VehicleToJson(this);
}

@JsonSerializable(explicitToJson: true)
class VehicleShortSummaries {
  final String? vehiclleId;
  final String? name;
  final String? model;
  final String? year;
  final String? fuelType;
  final List<String>? image;
  final String? createdAt;
  final String? updatedAt;

  VehicleShortSummaries({
    this.vehiclleId,
    this.name,
    this.model,
    this.year,
    this.fuelType,
    this.image,
    this.createdAt,
    this.updatedAt,
  });
  factory VehicleShortSummaries.fromJson(Map<String, dynamic> json) =>
      _$VehicleShortSummariesFromJson(json);

  Map<String, dynamic> toJson() => _$VehicleShortSummariesToJson(this);
}

@JsonSerializable(explicitToJson: true)
class VehicleFullSummaries {
  final String? vehiclleId;
  final String? name;
  final String? model;
  final String? year;
  final String? fuelType;
  final List<String>? image;
  final String? createdAt;
  final String? updatedAt;

  VehicleFullSummaries({
    this.vehiclleId,
    this.name,
    this.model,
    this.year,
    this.fuelType,
    this.image,
    this.createdAt,
    this.updatedAt,
  });
  factory VehicleFullSummaries.fromJson(Map<String, dynamic> json) =>
      _$VehicleFullSummariesFromJson(json);

  Map<String, dynamic> toJson() => _$VehicleFullSummariesToJson(this);
}

// flutter pub run build_runner build
// flutter pub run build_runner watch
// flutter pub run build_runner clean
//https://www.desktopbackground.org/download/1280x960/2011/11/08/293860_high-quality-car-pictures-1955-alfa-romeo-1900c-super-car_1920x1080_h.jpg
var vehicle = <Vehicle>[
  // generate some real data


  Vehicle(
    id: "1",
    name: "Data 1 Royal ",
    model: "Alto",
    year: "2019",
    fuelType: "Petrol",
    image: [
      "https://images.unsplash.com/photo-1552519507-da3b142c6e3d",
      "https://img.indianautosblog.com/2019/04/24/2019-maruti-alto-facelift-front-three-quarters-raj-452d.jpg",
      "https://img.indianautosblog.com/2019/04/24/2019-maruti-alto-facelift-front-three-quarters-raj-452d.jpg",
      "https://img.indianautosblog.com/2019/04/24/2019-maruti-alto-facelift-front-three-quarters-raj-452d.jpg",
    ],
  ), //
  Vehicle(
    id: "4",
    name: "Data 2 Royal",
    model: "Dzire",
    year: "2019",
    fuelType: "Petrol",
    image: [
      "https://picsum.photos/250?image=${Random().nextInt(10)}",
      "https://www.wallpaperflare.com/static/620/278/549/motorcycle-yamaha-yamaha-r1-yellow-wallpaper.jpg",
      "https://img.indianautosblog.com/2019/04/24/2019-maruti-alto-facelift-front-three-quarters-raj-452d.jpg",
      "https://img.indianautosblog.com/2019/04/24/2019-maruti-alto-facelift-front-three-quarters-raj-452d.jpg",
    ],
  ),
  Vehicle(
    id: "4",
    name: "Maruti Suzuki",
    model: "Dzire",
    year: "2019",
    fuelType: "Petrol",
    image: [
      "https://images.unsplash.com/photo-1552519507-da3b142c6e3d",
      "https://www.desktopbackground.org/download/1280x960/2011/11/08/293860_high-quality-car-pictures-1955-alfa-romeo-1900c-super-car_1920x1080_h.jpg",
      "https://img.indianautosblog.com/2019/04/24/2019-maruti-alto-facelift-front-three-quarters-raj-452d.jpg",
      "https://img.indianautosblog.com/2019/04/24/2019-maruti-alto-facelift-front-three-quarters-raj-452d.jpg",
    ],
  ),
];
