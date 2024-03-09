
import 'package:json_annotation/json_annotation.dart';
part 'show_room.g.dart';
@JsonSerializable()
class ShowRoom {
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

  ShowRoom({
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
  });
 factory ShowRoom.fromJson(Map<String, dynamic> json) =>
      _$ShowRoomFromJson(json);
  Map<String, dynamic> toJson() => _$ShowRoomToJson(this); 




}
// flutter pub run build_runner build';
