// ignore_for_file: public_member_api_docs

import 'package:json_annotation/json_annotation.dart';
import 'package:tmdb_movie/core/model/tmdb_models/movie_tv_utilts_model/credits_model/cast_model/cast_model.dart';

part 'credits_model.g.dart';

@JsonSerializable()
class MovieTvCredits {
  MovieTvCredits({
    this.cast,
  });

  factory MovieTvCredits.fromJson(Map<String, dynamic> json) =>
      _$MovieTvCreditsFromJson(json);
  @JsonKey(name: 'cast')
  final List<Cast>? cast;

  MovieTvCredits copyWith({
    List<Cast>? cast,
  }) =>
      MovieTvCredits(
        cast: cast ?? this.cast,
      );

  Map<String, dynamic> toJson() => _$MovieTvCreditsToJson(this);
}
