// ignore_for_file: public_member_api_docs

import 'package:json_annotation/json_annotation.dart';

part 'tv_show_last_episode_to_air_model.g.dart';

@JsonSerializable()
class TvShowLastEpisodeToAir {
  TvShowLastEpisodeToAir({
    this.id,
    this.name,
    this.overview,
    this.voteAverage,
    this.voteCount,
    this.airDate,
    this.episodeNumber,
    this.episodeType,
    this.productionCode,
    this.runtime,
    this.seasonNumber,
    this.showId,
    this.stillPath,
  });

  factory TvShowLastEpisodeToAir.fromJson(Map<String, dynamic> json) =>
      _$TvShowLastEpisodeToAirFromJson(json);
  @JsonKey(name: 'id')
  final int? id;
  @JsonKey(name: 'name')
  final String? name;
  @JsonKey(name: 'overview')
  final String? overview;
  @JsonKey(name: 'vote_average')
  final double? voteAverage;
  @JsonKey(name: 'vote_count')
  final int? voteCount;
  @JsonKey(name: 'air_date')
  final DateTime? airDate;
  @JsonKey(name: 'episode_number')
  final int? episodeNumber;
  @JsonKey(name: 'episode_type')
  final String? episodeType;
  @JsonKey(name: 'production_code')
  final String? productionCode;
  @JsonKey(name: 'runtime')
  final int? runtime;
  @JsonKey(name: 'season_number')
  final int? seasonNumber;
  @JsonKey(name: 'show_id')
  final int? showId;
  @JsonKey(name: 'still_path')
  final String? stillPath;

  TvShowLastEpisodeToAir copyWith({
    int? id,
    String? name,
    String? overview,
    double? voteAverage,
    int? voteCount,
    DateTime? airDate,
    int? episodeNumber,
    String? episodeType,
    String? productionCode,
    int? runtime,
    int? seasonNumber,
    int? showId,
    String? stillPath,
  }) =>
      TvShowLastEpisodeToAir(
        id: id ?? this.id,
        name: name ?? this.name,
        overview: overview ?? this.overview,
        voteAverage: voteAverage ?? this.voteAverage,
        voteCount: voteCount ?? this.voteCount,
        airDate: airDate ?? this.airDate,
        episodeNumber: episodeNumber ?? this.episodeNumber,
        episodeType: episodeType ?? this.episodeType,
        productionCode: productionCode ?? this.productionCode,
        runtime: runtime ?? this.runtime,
        seasonNumber: seasonNumber ?? this.seasonNumber,
        showId: showId ?? this.showId,
        stillPath: stillPath ?? this.stillPath,
      );

  Map<String, dynamic> toJson() => _$TvShowLastEpisodeToAirToJson(this);
}
