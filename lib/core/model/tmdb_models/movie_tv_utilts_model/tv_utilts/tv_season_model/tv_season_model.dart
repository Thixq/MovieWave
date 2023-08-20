// ignore_for_file: public_member_api_docs

import 'package:json_annotation/json_annotation.dart';

part 'tv_season_model.g.dart';

@JsonSerializable()
class TvSeason {
  TvSeason({
    this.airDate,
    this.episodeCount,
    this.id,
    this.name,
    this.overview,
    this.posterPath,
    this.seasonNumber,
    this.voteAverage,
  });

  factory TvSeason.fromJson(Map<String, dynamic> json) =>
      _$TvSeasonFromJson(json);
  @JsonKey(name: 'air_date')
  final DateTime? airDate;
  @JsonKey(name: 'episode_count')
  final int? episodeCount;
  @JsonKey(name: 'id')
  final int? id;
  @JsonKey(name: 'name')
  final String? name;
  @JsonKey(name: 'overview')
  final String? overview;
  @JsonKey(name: 'poster_path')
  final String? posterPath;
  @JsonKey(name: 'season_number')
  final int? seasonNumber;
  @JsonKey(name: 'vote_average')
  final double? voteAverage;

  TvSeason copyWith({
    DateTime? airDate,
    int? episodeCount,
    int? id,
    String? name,
    String? overview,
    String? posterPath,
    int? seasonNumber,
    double? voteAverage,
  }) =>
      TvSeason(
        airDate: airDate ?? this.airDate,
        episodeCount: episodeCount ?? this.episodeCount,
        id: id ?? this.id,
        name: name ?? this.name,
        overview: overview ?? this.overview,
        posterPath: posterPath ?? this.posterPath,
        seasonNumber: seasonNumber ?? this.seasonNumber,
        voteAverage: voteAverage ?? this.voteAverage,
      );

  Map<String, dynamic> toJson() => _$TvSeasonToJson(this);
}
