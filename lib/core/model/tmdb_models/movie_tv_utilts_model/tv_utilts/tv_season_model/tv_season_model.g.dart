// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'tv_season_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

TvSeason _$TvSeasonFromJson(Map<String, dynamic> json) => TvSeason(
      airDate: json['air_date'] == null
          ? null
          : DateTime.parse(json['air_date'] as String),
      episodeCount: json['episode_count'] as int?,
      id: json['id'] as int?,
      name: json['name'] as String?,
      overview: json['overview'] as String?,
      posterPath: json['poster_path'] as String?,
      seasonNumber: json['season_number'] as int?,
      voteAverage: (json['vote_average'] as num?)?.toDouble(),
    );

Map<String, dynamic> _$TvSeasonToJson(TvSeason instance) => <String, dynamic>{
      'air_date': instance.airDate?.toIso8601String(),
      'episode_count': instance.episodeCount,
      'id': instance.id,
      'name': instance.name,
      'overview': instance.overview,
      'poster_path': instance.posterPath,
      'season_number': instance.seasonNumber,
      'vote_average': instance.voteAverage,
    };
