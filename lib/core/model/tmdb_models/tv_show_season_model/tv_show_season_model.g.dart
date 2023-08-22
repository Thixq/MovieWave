// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'tv_show_season_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

SeasonModel _$SeasonModelFromJson(Map<String, dynamic> json) => SeasonModel(
      id: json['_id'] as String?,
      airDate: json['air_date'] == null
          ? null
          : DateTime.parse(json['air_date'] as String),
      episodes: (json['episodes'] as List<dynamic>?)
          ?.map((e) => TvShowEpisode.fromJson(e as Map<String, dynamic>))
          .toList(),
      name: json['name'] as String?,
      overview: json['overview'] as String?,
      seasonModelId: json['id'] as int?,
      posterPath: json['poster_path'] as String?,
      seasonNumber: json['season_number'] as int?,
      voteAverage: (json['vote_average'] as num?)?.toDouble(),
      credits: json['credits'] == null
          ? null
          : MovieTvCredits.fromJson(json['credits'] as Map<String, dynamic>),
      images: json['images'] == null
          ? null
          : MovieTvImages.fromJson(json['images'] as Map<String, dynamic>),
      videos: json['videos'] == null
          ? null
          : MovieTvVideos.fromJson(json['videos'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$SeasonModelToJson(SeasonModel instance) =>
    <String, dynamic>{
      '_id': instance.id,
      'air_date': instance.airDate?.toIso8601String(),
      'episodes': instance.episodes,
      'name': instance.name,
      'overview': instance.overview,
      'id': instance.seasonModelId,
      'poster_path': instance.posterPath,
      'season_number': instance.seasonNumber,
      'vote_average': instance.voteAverage,
      'credits': instance.credits,
      'images': instance.images,
      'videos': instance.videos,
    };
