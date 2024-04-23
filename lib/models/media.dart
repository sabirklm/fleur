import 'package:fleur/models/vehicle.dart';
import 'package:json_annotation/json_annotation.dart';
part 'media.g.dart';

// flutter pub run build_runner build';

@JsonSerializable(explicitToJson: true)
class Media {
  final String? id;
  final String? title;
  final String? desc;
  final String? url;
  final String? imgUrl;
  final String? videoUrl;
  final String? createdAt;
  final String? updatedAt;
  final String? type;
  final List<Section>? sections;

  Media({
    this.type,
    this.id,
    this.title,
    this.desc,
    this.url,
    this.imgUrl,
    this.videoUrl,
    this.createdAt,
    this.updatedAt,
    this.sections,
  });
  factory Media.fromJson(Map<String, dynamic> json) => _$MediaFromJson(json);
  Map<String, dynamic> toJson() => _$MediaToJson(this);
}

@JsonSerializable(explicitToJson: true)
class MediaMetaData {
  final String? type;
  final String? name;
  List<String>? imgUrls;
  final String desc;
  

  MediaMetaData({
    this.type,
    this.name,
    this.imgUrls,
    this.desc = '',
  });
  factory MediaMetaData.fromJson(Map<String, dynamic> json) =>
      _$MediaMetaDataFromJson(json);
  Map<String, dynamic> toJson() => _$MediaMetaDataToJson(this);
}

@JsonSerializable(explicitToJson: true)
class FeedViewModel {
  final String? type;
  final List<MediaMetaData>? mediaMetadata;
  final Media? media;

  FeedViewModel({
    this.type,
    this.mediaMetadata,
    this.media,
  });
  factory FeedViewModel.fromJson(Map<String, dynamic> json) =>
      _$FeedViewModelFromJson(json);
  Map<String, dynamic> toJson() => _$FeedViewModelToJson(this);
}
