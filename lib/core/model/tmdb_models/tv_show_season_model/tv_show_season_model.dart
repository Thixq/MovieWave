// ignore_for_file:  sort_constructors_first
// ignore_for_file: public_member_api_docs

import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';

import 'package:tmdb_movie/core/interface/INetworkModel.dart';
import 'package:tmdb_movie/core/model/tmdb_models/movie_tv_utilts_model/credits_model/credits_model.dart';
import 'package:tmdb_movie/core/model/tmdb_models/movie_tv_utilts_model/image_model/image_model.dart';
import 'package:tmdb_movie/core/model/tmdb_models/movie_tv_utilts_model/tv_utilts/tv_show_season_result_episode_model/tv_show_season_result_episode_model.dart';
import 'package:tmdb_movie/core/model/tmdb_models/movie_tv_utilts_model/video_model/video_model.dart';

part 'tv_show_season_model.g.dart';

@JsonSerializable()
class SeasonModel extends Equatable
    implements INetworkModel<SeasonModel, dynamic> {
  const SeasonModel({
    this.id,
    this.airDate,
    this.episodes,
    this.name,
    this.overview,
    this.seasonModelId,
    this.posterPath,
    this.seasonNumber,
    this.voteAverage,
    this.credits,
    this.images,
    this.videos,
  });

  @JsonKey(name: '_id')
  final String? id;
  @JsonKey(name: 'air_date')
  final DateTime? airDate;
  @JsonKey(name: 'episodes')
  final List<TvShowEpisode>? episodes;
  @JsonKey(name: 'name')
  final String? name;
  @JsonKey(name: 'overview')
  final String? overview;
  @JsonKey(name: 'id')
  final int? seasonModelId;
  @JsonKey(name: 'poster_path')
  final String? posterPath;
  @JsonKey(name: 'season_number')
  final int? seasonNumber;
  @JsonKey(name: 'vote_average')
  final double? voteAverage;
  @JsonKey(name: 'credits')
  final MovieTvCredits? credits;
  @JsonKey(name: 'images')
  final MovieTvImages? images;
  @JsonKey(name: 'videos')
  final MovieTvVideos? videos;

  SeasonModel copyWith({
    String? id,
    DateTime? airDate,
    List<TvShowEpisode>? episodes,
    String? name,
    String? overview,
    int? seasonModelId,
    String? posterPath,
    int? seasonNumber,
    double? voteAverage,
    MovieTvCredits? credits,
    MovieTvImages? images,
    MovieTvVideos? videos,
  }) =>
      SeasonModel(
        id: id ?? this.id,
        airDate: airDate ?? this.airDate,
        episodes: episodes ?? this.episodes,
        name: name ?? this.name,
        overview: overview ?? this.overview,
        seasonModelId: seasonModelId ?? this.seasonModelId,
        posterPath: posterPath ?? this.posterPath,
        seasonNumber: seasonNumber ?? this.seasonNumber,
        voteAverage: voteAverage ?? this.voteAverage,
        credits: credits ?? this.credits,
        images: images ?? this.images,
        videos: videos ?? this.videos,
      );

  @override
  SeasonModel fromJson(
    Map<String, dynamic> json, {
    dynamic Function(Object? p1)? fromJsonT,
  }) =>
      _$SeasonModelFromJson(json);

  @override
  Map<String, dynamic> toJson({Object Function(SeasonModel? value)? toJsonT}) =>
      _$SeasonModelToJson(this);

  @override
  List<Object?> get props {
    return [id, name];
  }
}
