// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'credits_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

MovieTvCredits _$MovieTvCreditsFromJson(Map<String, dynamic> json) =>
    MovieTvCredits(
      cast: (json['cast'] as List<dynamic>?)
          ?.map((e) => Cast.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$MovieTvCreditsToJson(MovieTvCredits instance) =>
    <String, dynamic>{
      'cast': instance.cast,
    };
