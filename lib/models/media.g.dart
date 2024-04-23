// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'media.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Media _$MediaFromJson(Map<String, dynamic> json) => Media(
      type: json['type'] as String?,
      id: json['id'] as String?,
      title: json['title'] as String?,
      desc: json['desc'] as String?,
      url: json['url'] as String?,
      imgUrl: json['imgUrl'] as String?,
      videoUrl: json['videoUrl'] as String?,
      createdAt: json['createdAt'] as String?,
      updatedAt: json['updatedAt'] as String?,
      sections: (json['sections'] as List<dynamic>?)
          ?.map((e) => Section.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$MediaToJson(Media instance) => <String, dynamic>{
      'id': instance.id,
      'title': instance.title,
      'desc': instance.desc,
      'url': instance.url,
      'imgUrl': instance.imgUrl,
      'videoUrl': instance.videoUrl,
      'createdAt': instance.createdAt,
      'updatedAt': instance.updatedAt,
      'type': instance.type,
      'sections': instance.sections?.map((e) => e.toJson()).toList(),
    };

MediaMetaData _$MediaMetaDataFromJson(Map<String, dynamic> json) =>
    MediaMetaData(
      type: json['type'] as String?,
      name: json['name'] as String?,
      imgUrls:
          (json['imgUrls'] as List<dynamic>?)?.map((e) => e as String).toList(),
      desc: json['desc'] as String? ?? '',
    );

Map<String, dynamic> _$MediaMetaDataToJson(MediaMetaData instance) =>
    <String, dynamic>{
      'type': instance.type,
      'name': instance.name,
      'imgUrls': instance.imgUrls,
      'desc': instance.desc,
    };

FeedViewModel _$FeedViewModelFromJson(Map<String, dynamic> json) =>
    FeedViewModel(
      type: json['type'] as String?,
      mediaMetadata: (json['mediaMetadata'] as List<dynamic>?)
          ?.map((e) => MediaMetaData.fromJson(e as Map<String, dynamic>))
          .toList(),
      media: json['media'] == null
          ? null
          : Media.fromJson(json['media'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$FeedViewModelToJson(FeedViewModel instance) =>
    <String, dynamic>{
      'type': instance.type,
      'mediaMetadata': instance.mediaMetadata?.map((e) => e.toJson()).toList(),
      'media': instance.media?.toJson(),
    };
