// ignore_for_file: public_member_api_docs

import 'package:json_annotation/json_annotation.dart';

part 'image_model.g.dart';

@JsonSerializable()
class MovieTvImages {
  MovieTvImages({
    this.backdrops,
  });

  factory MovieTvImages.fromJson(Map<String, dynamic> json) =>
      _$MovieTvImagesFromJson(json);
  @JsonKey(name: 'backdrops')
  final List<Backdrop>? backdrops;

  MovieTvImages copyWith({
    List<Backdrop>? backdrops,
  }) =>
      MovieTvImages(
        backdrops: backdrops ?? this.backdrops,
      );

  Map<String, dynamic> toJson() => _$MovieTvImagesToJson(this);
}

@JsonSerializable()
class Backdrop {
  Backdrop({
    this.aspectRatio,
    this.height,
    this.iso6391,
    this.filePath,
    this.voteAverage,
    this.voteCount,
    this.width,
  });

  factory Backdrop.fromJson(Map<String, dynamic> json) =>
      _$BackdropFromJson(json);
  @JsonKey(name: 'aspect_ratio')
  final double? aspectRatio;
  @JsonKey(name: 'height')
  final int? height;
  @JsonKey(name: 'iso_639_1')
  final String? iso6391;
  @JsonKey(name: 'file_path')
  final String? filePath;
  @JsonKey(name: 'vote_average')
  final double? voteAverage;
  @JsonKey(name: 'vote_count')
  final int? voteCount;
  @JsonKey(name: 'width')
  final int? width;

  Backdrop copyWith({
    double? aspectRatio,
    int? height,
    String? iso6391,
    String? filePath,
    double? voteAverage,
    int? voteCount,
    int? width,
  }) =>
      Backdrop(
        aspectRatio: aspectRatio ?? this.aspectRatio,
        height: height ?? this.height,
        iso6391: iso6391 ?? this.iso6391,
        filePath: filePath ?? this.filePath,
        voteAverage: voteAverage ?? this.voteAverage,
        voteCount: voteCount ?? this.voteCount,
        width: width ?? this.width,
      );

  Map<String, dynamic> toJson() => _$BackdropToJson(this);
}
