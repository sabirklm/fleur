import 'package:json_annotation/json_annotation.dart';

part 'user.g.dart';

// user.dart
// @JsonSerializable()
@JsonSerializable(explicitToJson: true)
class User {
  String? id;
  String? name;
  String? email;
  String? profilePicture;

  User({
    this.id,
    this.name,
    this.email,
    this.profilePicture,
  });

  factory User.fromJson(Map<String, dynamic> json) => _$UserFromJson(json);

  Map<String, dynamic> toJson() => _$UserToJson(this);
}
