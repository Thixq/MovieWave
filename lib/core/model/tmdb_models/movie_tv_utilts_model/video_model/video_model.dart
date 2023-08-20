// ignore_for_file: public_member_api_docs

import 'package:json_annotation/json_annotation.dart';

part 'video_model.g.dart';

@JsonSerializable()
class MovieTvVideos {
  MovieTvVideos({
    this.results,
  });

  factory MovieTvVideos.fromJson(Map<String, dynamic> json) =>
      _$MovieTvVideosFromJson(json);
  @JsonKey(name: 'results')
  final List<VideosResult>? results;

  MovieTvVideos copyWith({
    List<VideosResult>? results,
  }) =>
      MovieTvVideos(
        results: results ?? this.results,
      );

  Map<String, dynamic> toJson() => _$MovieTvVideosToJson(this);
}

@JsonSerializable()
class VideosResult {
  VideosResult({
    this.iso6391,
    this.iso31661,
    this.name,
    this.key,
    this.site,
    this.size,
    this.type,
    this.official,
    this.publishedAt,
    this.id,
  });

  factory VideosResult.fromJson(Map<String, dynamic> json) =>
      _$VideosResultFromJson(json);
  @JsonKey(name: 'iso_639_1')
  final String? iso6391;
  @JsonKey(name: 'iso_3166_1')
  final String? iso31661;
  @JsonKey(name: 'name')
  final String? name;
  @JsonKey(name: 'key')
  final String? key;
  @JsonKey(name: 'site')
  final String? site;
  @JsonKey(name: 'size')
  final int? size;
  @JsonKey(name: 'type')
  final String? type;
  @JsonKey(name: 'official')
  final bool? official;
  @JsonKey(name: 'published_at')
  final DateTime? publishedAt;
  @JsonKey(name: 'id')
  final String? id;

  VideosResult copyWith({
    String? iso6391,
    String? iso31661,
    String? name,
    String? key,
    String? site,
    int? size,
    String? type,
    bool? official,
    DateTime? publishedAt,
    String? id,
  }) =>
      VideosResult(
        iso6391: iso6391 ?? this.iso6391,
        iso31661: iso31661 ?? this.iso31661,
        name: name ?? this.name,
        key: key ?? this.key,
        site: site ?? this.site,
        size: size ?? this.size,
        type: type ?? this.type,
        official: official ?? this.official,
        publishedAt: publishedAt ?? this.publishedAt,
        id: id ?? this.id,
      );

  Map<String, dynamic> toJson() => _$VideosResultToJson(this);
}
