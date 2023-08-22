// ignore_for_file: public_member_api_docs

import 'package:json_annotation/json_annotation.dart';

part 'tv_show_season_result_episode_model.g.dart';

@JsonSerializable()
class TvShowEpisode {
  TvShowEpisode({
    this.airDate,
    this.episodeNumber,
    this.episodeType,
    this.id,
    this.name,
    this.overview,
    this.productionCode,
    this.runtime,
    this.seasonNumber,
    this.showId,
    this.stillPath,
    this.voteAverage,
    this.voteCount,
  });

  factory TvShowEpisode.fromJson(Map<String, dynamic> json) =>
      _$TvShowEpisodeFromJson(json);
  @JsonKey(name: 'air_date')
  final DateTime? airDate;
  @JsonKey(name: 'episode_number')
  final int? episodeNumber;
  @JsonKey(name: 'episode_type')
  final String? episodeType;
  @JsonKey(name: 'id')
  final int? id;
  @JsonKey(name: 'name')
  final String? name;
  @JsonKey(name: 'overview')
  final String? overview;
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
  @JsonKey(name: 'vote_average')
  final double? voteAverage;
  @JsonKey(name: 'vote_count')
  final int? voteCount;

  TvShowEpisode copyWith({
    DateTime? airDate,
    int? episodeNumber,
    String? episodeType,
    int? id,
    String? name,
    String? overview,
    String? productionCode,
    int? runtime,
    int? seasonNumber,
    int? showId,
    String? stillPath,
    double? voteAverage,
    int? voteCount,
  }) =>
      TvShowEpisode(
        airDate: airDate ?? this.airDate,
        episodeNumber: episodeNumber ?? this.episodeNumber,
        episodeType: episodeType ?? this.episodeType,
        id: id ?? this.id,
        name: name ?? this.name,
        overview: overview ?? this.overview,
        productionCode: productionCode ?? this.productionCode,
        runtime: runtime ?? this.runtime,
        seasonNumber: seasonNumber ?? this.seasonNumber,
        showId: showId ?? this.showId,
        stillPath: stillPath ?? this.stillPath,
        voteAverage: voteAverage ?? this.voteAverage,
        voteCount: voteCount ?? this.voteCount,
      );

  Map<String, dynamic> toJson() => _$TvShowEpisodeToJson(this);
}
