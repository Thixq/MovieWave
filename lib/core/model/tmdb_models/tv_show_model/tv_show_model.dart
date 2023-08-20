// ignore_for_file: public_member_api_docs

import 'package:json_annotation/json_annotation.dart';
import 'package:tmdb_movie/core/model/network_model.dart';
import 'package:tmdb_movie/core/model/tmdb_models/genre/genre.dart';
import 'package:tmdb_movie/core/model/tmdb_models/movie_tv_utilts_model/credits_model/credits_model.dart';
import 'package:tmdb_movie/core/model/tmdb_models/movie_tv_utilts_model/image_model/image_model.dart';
import 'package:tmdb_movie/core/model/tmdb_models/movie_tv_utilts_model/movie_tv_search_result_generic_model/movie_tv_search_result_generic_model.dart';
import 'package:tmdb_movie/core/model/tmdb_models/movie_tv_utilts_model/spoken_language_model/spoken_language_model.dart';
import 'package:tmdb_movie/core/model/tmdb_models/movie_tv_utilts_model/tv_utilts/tv_season_model/tv_season_model.dart';
import 'package:tmdb_movie/core/model/tmdb_models/movie_tv_utilts_model/tv_utilts/tv_show_created_by_model/tv_show_created_by_model.dart';
import 'package:tmdb_movie/core/model/tmdb_models/movie_tv_utilts_model/tv_utilts/tv_show_last_episode_to_air_model/tv_show_last_episode_to_air_model.dart';
import 'package:tmdb_movie/core/model/tmdb_models/movie_tv_utilts_model/tv_utilts/tv_show_result_model/tv_show_result_model.dart';
import 'package:tmdb_movie/core/model/tmdb_models/movie_tv_utilts_model/video_model/video_model.dart';

part 'tv_show_model.g.dart';

@JsonSerializable()
class TvShowModel extends INetworkModel<TvShowModel, TvShowResult> {
  TvShowModel({
    this.adult,
    this.backdropPath,
    this.createdBy,
    this.episodeRunTime,
    this.firstAirDate,
    this.genres,
    this.homepage,
    this.id,
    this.inProduction,
    this.languages,
    this.lastAirDate,
    this.lastEpisodeToAir,
    this.name,
    this.nextEpisodeToAir,
    this.numberOfEpisodes,
    this.numberOfSeasons,
    this.originCountry,
    this.originalLanguage,
    this.originalName,
    this.overview,
    this.popularity,
    this.posterPath,
    this.seasons,
    this.spokenLanguages,
    this.status,
    this.tagline,
    this.type,
    this.voteAverage,
    this.voteCount,
    this.images,
    this.videos,
    this.credits,
    this.similar,
  });

  @JsonKey(name: 'adult')
  final bool? adult;
  @JsonKey(name: 'backdrop_path')
  final String? backdropPath;
  @JsonKey(name: 'created_by')
  final List<TvShowCreatedBy>? createdBy;
  @JsonKey(name: 'episode_run_time')
  final List<int>? episodeRunTime;
  @JsonKey(name: 'first_air_date')
  final DateTime? firstAirDate;
  @JsonKey(name: 'genres')
  final List<GenreElement>? genres;
  @JsonKey(name: 'homepage')
  final String? homepage;
  @JsonKey(name: 'id')
  final int? id;
  @JsonKey(name: 'in_production')
  final bool? inProduction;
  @JsonKey(name: 'languages')
  final List<String>? languages;
  @JsonKey(name: 'last_air_date')
  final DateTime? lastAirDate;
  @JsonKey(name: 'last_episode_to_air')
  final TvShowLastEpisodeToAir? lastEpisodeToAir;
  @JsonKey(name: 'name')
  final String? name;
  @JsonKey(name: 'next_episode_to_air', defaultValue: '0000-00-00')
  final dynamic nextEpisodeToAir;
  @JsonKey(name: 'number_of_episodes')
  final int? numberOfEpisodes;
  @JsonKey(name: 'number_of_seasons')
  final int? numberOfSeasons;
  @JsonKey(name: 'origin_country')
  final List<String>? originCountry;
  @JsonKey(name: 'original_language')
  final String? originalLanguage;
  @JsonKey(name: 'original_name')
  final String? originalName;
  @JsonKey(name: 'overview')
  final String? overview;
  @JsonKey(name: 'popularity')
  final double? popularity;
  @JsonKey(name: 'poster_path')
  final String? posterPath;
  @JsonKey(name: 'seasons')
  final List<TvSeason>? seasons;
  @JsonKey(name: 'spoken_languages')
  final List<MovieTVSpokenLanguage>? spokenLanguages;
  @JsonKey(name: 'status')
  final String? status;
  @JsonKey(name: 'tagline')
  final String? tagline;
  @JsonKey(name: 'type')
  final String? type;
  @JsonKey(name: 'vote_average')
  final double? voteAverage;
  @JsonKey(name: 'vote_count')
  final int? voteCount;
  @JsonKey(name: 'images')
  final MovieTvImages? images;
  @JsonKey(name: 'videos')
  final MovieTvVideos? videos;
  @JsonKey(name: 'credits')
  final MovieTvCredits? credits;
  @JsonKey(name: 'similar')
  final SearchResultModel<TvShowResult>? similar;

  TvShowModel copyWith({
    bool? adult,
    String? backdropPath,
    List<TvShowCreatedBy>? createdBy,
    List<int>? episodeRunTime,
    DateTime? firstAirDate,
    List<GenreElement>? genres,
    String? homepage,
    int? id,
    bool? inProduction,
    List<String>? languages,
    DateTime? lastAirDate,
    TvShowLastEpisodeToAir? lastEpisodeToAir,
    String? name,
    dynamic nextEpisodeToAir,
    int? numberOfEpisodes,
    int? numberOfSeasons,
    List<String>? originCountry,
    String? originalLanguage,
    String? originalName,
    String? overview,
    double? popularity,
    String? posterPath,
    List<TvSeason>? seasons,
    List<MovieTVSpokenLanguage>? spokenLanguages,
    String? status,
    String? tagline,
    String? type,
    double? voteAverage,
    int? voteCount,
    MovieTvImages? images,
    MovieTvVideos? videos,
    MovieTvCredits? credits,
    SearchResultModel<TvShowResult>? similar,
  }) =>
      TvShowModel(
        adult: adult ?? this.adult,
        backdropPath: backdropPath ?? this.backdropPath,
        createdBy: createdBy ?? this.createdBy,
        episodeRunTime: episodeRunTime ?? this.episodeRunTime,
        firstAirDate: firstAirDate ?? this.firstAirDate,
        genres: genres ?? this.genres,
        homepage: homepage ?? this.homepage,
        id: id ?? this.id,
        inProduction: inProduction ?? this.inProduction,
        languages: languages ?? this.languages,
        lastAirDate: lastAirDate ?? this.lastAirDate,
        lastEpisodeToAir: lastEpisodeToAir ?? this.lastEpisodeToAir,
        name: name ?? this.name,
        nextEpisodeToAir: nextEpisodeToAir ?? this.nextEpisodeToAir,
        numberOfEpisodes: numberOfEpisodes ?? this.numberOfEpisodes,
        numberOfSeasons: numberOfSeasons ?? this.numberOfSeasons,
        originCountry: originCountry ?? this.originCountry,
        originalLanguage: originalLanguage ?? this.originalLanguage,
        originalName: originalName ?? this.originalName,
        overview: overview ?? this.overview,
        popularity: popularity ?? this.popularity,
        posterPath: posterPath ?? this.posterPath,
        seasons: seasons ?? this.seasons,
        spokenLanguages: spokenLanguages ?? this.spokenLanguages,
        status: status ?? this.status,
        tagline: tagline ?? this.tagline,
        type: type ?? this.type,
        voteAverage: voteAverage ?? this.voteAverage,
        voteCount: voteCount ?? this.voteCount,
        images: images ?? this.images,
        videos: videos ?? this.videos,
        credits: credits ?? this.credits,
        similar: similar ?? this.similar,
      );

  @override
  Map<String, dynamic> toJson({
    Object Function(TvShowResult? value)? toJsonT,
  }) =>
      _$TvShowModelToJson(this);

  @override
  TvShowModel fromJson(
    Map<String, dynamic> json, {
    TvShowResult? Function(Object? p1)? fromJsonT,
  }) =>
      _$TvShowModelFromJson(json);
}
