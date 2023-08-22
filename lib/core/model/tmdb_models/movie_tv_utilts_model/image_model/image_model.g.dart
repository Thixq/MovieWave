// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'image_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

MovieTvImages _$MovieTvImagesFromJson(Map<String, dynamic> json) =>
    MovieTvImages(
      backdrops: (json['backdrops'] as List<dynamic>?)
          ?.map((e) => Backdrop.fromJson(e as Map<String, dynamic>))
          .toList(),
      posters: (json['posters'] as List<dynamic>?)
          ?.map((e) => Backdrop.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$MovieTvImagesToJson(MovieTvImages instance) =>
    <String, dynamic>{
      'backdrops': instance.backdrops,
      'posters': instance.posters,
    };

Backdrop _$BackdropFromJson(Map<String, dynamic> json) => Backdrop(
      aspectRatio: (json['aspect_ratio'] as num?)?.toDouble(),
      height: json['height'] as int?,
      iso6391: json['iso_639_1'] as String?,
      filePath: json['file_path'] as String?,
      voteAverage: (json['vote_average'] as num?)?.toDouble(),
      voteCount: json['vote_count'] as int?,
      width: json['width'] as int?,
    );

Map<String, dynamic> _$BackdropToJson(Backdrop instance) => <String, dynamic>{
      'aspect_ratio': instance.aspectRatio,
      'height': instance.height,
      'iso_639_1': instance.iso6391,
      'file_path': instance.filePath,
      'vote_average': instance.voteAverage,
      'vote_count': instance.voteCount,
      'width': instance.width,
    };
