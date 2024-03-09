import 'package:json_annotation/json_annotation.dart';

part 'brand.g.dart';

// flutter pub run build_runner build';
@JsonSerializable(explicitToJson: true)
class Brand {
  final String? id;
  final String? name;
  final String? description;
  final String? image;
  final String? website;

  Brand({
    this.id,
    this.name,
    this.description,
    this.image,
    this.website,
  });

  factory Brand.fromJson(Map<String, dynamic> json) => _$BrandFromJson(json);

  Map<String, dynamic> toJson() => _$BrandToJson(this);
}
