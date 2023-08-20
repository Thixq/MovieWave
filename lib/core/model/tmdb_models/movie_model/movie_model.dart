// ignore_for_file: public_member_api_docs, strict_raw_type

import 'package:json_annotation/json_annotation.dart';
import 'package:tmdb_movie/core/model/network_model.dart';
import 'package:tmdb_movie/core/model/tmdb_models/genre/genre.dart';
import 'package:tmdb_movie/core/model/tmdb_models/movie_tv_utilts_model/belongs_to_collection_model/belongs_to_collection_model.dart';
import 'package:tmdb_movie/core/model/tmdb_models/movie_tv_utilts_model/credits_model/credits_model.dart';
import 'package:tmdb_movie/core/model/tmdb_models/movie_tv_utilts_model/image_model/image_model.dart';
import 'package:tmdb_movie/core/model/tmdb_models/movie_tv_utilts_model/movie_result_model/movie_result_model.dart';
import 'package:tmdb_movie/core/model/tmdb_models/movie_tv_utilts_model/movie_tv_search_result_generic_model/movie_tv_search_result_generic_model.dart';
import 'package:tmdb_movie/core/model/tmdb_models/movie_tv_utilts_model/spoken_language_model/spoken_language_model.dart';
import 'package:tmdb_movie/core/model/tmdb_models/movie_tv_utilts_model/video_model/video_model.dart';

part 'movie_model.g.dart';

@JsonSerializable()
class MovieModel extends INetworkModel<MovieModel, int> {
  MovieModel({
    this.adult,
    this.backdropPath,
    this.belongsToCollection,
    this.budget,
    this.genres,
    this.homepage,
    this.id,
    this.imdbId,
    this.originalLanguage,
    this.originalTitle,
    this.overview,
    this.popularity,
    this.posterPath,
    this.releaseDate,
    this.revenue,
    this.runtime,
    this.spokenLanguages,
    this.status,
    this.tagline,
    this.title,
    this.video,
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
  @JsonKey(name: 'belongs_to_collection')
  final MovieTvBelongsToCollection? belongsToCollection;
  @JsonKey(name: 'budget')
  final int? budget;
  @JsonKey(name: 'genres')
  final List<GenreElement>? genres;
  @JsonKey(name: 'homepage')
  final String? homepage;
  @JsonKey(name: 'id')
  final int? id;
  @JsonKey(name: 'imdb_id')
  final String? imdbId;
  @JsonKey(name: 'original_language')
  final String? originalLanguage;
  @JsonKey(name: 'original_title')
  final String? originalTitle;
  @JsonKey(name: 'overview')
  final String? overview;
  @JsonKey(name: 'popularity')
  final double? popularity;
  @JsonKey(name: 'poster_path')
  final String? posterPath;
  @JsonKey(name: 'release_date')
  final DateTime? releaseDate;
  @JsonKey(name: 'revenue')
  final int? revenue;
  @JsonKey(name: 'runtime')
  final int? runtime;
  @JsonKey(name: 'spoken_languages')
  final List<MovieTVSpokenLanguage>? spokenLanguages;
  @JsonKey(name: 'status')
  final String? status;
  @JsonKey(name: 'tagline')
  final String? tagline;
  @JsonKey(name: 'title')
  final String? title;
  @JsonKey(name: 'video')
  final bool? video;
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
  final SearchResultModel<MovieResult>? similar;

  MovieModel copyWith({
    bool? adult,
    String? backdropPath,
    MovieTvBelongsToCollection? belongsToCollection,
    int? budget,
    List<GenreElement>? genres,
    String? homepage,
    int? id,
    String? imdbId,
    String? originalLanguage,
    String? originalTitle,
    String? overview,
    double? popularity,
    String? posterPath,
    DateTime? releaseDate,
    int? revenue,
    int? runtime,
    List<MovieTVSpokenLanguage>? spokenLanguages,
    String? status,
    String? tagline,
    String? title,
    bool? video,
    double? voteAverage,
    int? voteCount,
    MovieTvImages? images,
    MovieTvVideos? videos,
    MovieTvCredits? credits,
    SearchResultModel<MovieResult>? similar,
  }) =>
      MovieModel(
        adult: adult ?? this.adult,
        backdropPath: backdropPath ?? this.backdropPath,
        belongsToCollection: belongsToCollection ?? this.belongsToCollection,
        budget: budget ?? this.budget,
        genres: genres ?? this.genres,
        homepage: homepage ?? this.homepage,
        id: id ?? this.id,
        imdbId: imdbId ?? this.imdbId,
        originalLanguage: originalLanguage ?? this.originalLanguage,
        originalTitle: originalTitle ?? this.originalTitle,
        overview: overview ?? this.overview,
        popularity: popularity ?? this.popularity,
        posterPath: posterPath ?? this.posterPath,
        releaseDate: releaseDate ?? this.releaseDate,
        revenue: revenue ?? this.revenue,
        runtime: runtime ?? this.runtime,
        spokenLanguages: spokenLanguages ?? this.spokenLanguages,
        status: status ?? this.status,
        tagline: tagline ?? this.tagline,
        title: title ?? this.title,
        video: video ?? this.video,
        voteAverage: voteAverage ?? this.voteAverage,
        voteCount: voteCount ?? this.voteCount,
        images: images ?? this.images,
        videos: videos ?? this.videos,
        credits: credits ?? this.credits,
        similar: similar ?? this.similar,
      );

  @override
  MovieModel fromJson(
    Map<String, dynamic> json, {
    int Function(Object? p1)? fromJsonT,
  }) =>
      _$MovieModelFromJson(json);

  @override
  Map<String, dynamic> toJson({Object Function(int? value)? toJsonT}) =>
      _$MovieModelToJson(this);
}
