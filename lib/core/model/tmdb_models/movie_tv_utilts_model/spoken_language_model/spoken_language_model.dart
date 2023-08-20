// ignore_for_file: public_member_api_docs

import 'package:json_annotation/json_annotation.dart';

part 'spoken_language_model.g.dart';

@JsonSerializable()
class MovieTVSpokenLanguage {
  MovieTVSpokenLanguage({
    this.englishName,
    this.iso6391,
    this.name,
  });

  factory MovieTVSpokenLanguage.fromJson(Map<String, dynamic> json) =>
      _$MovieTVSpokenLanguageFromJson(json);
  @JsonKey(name: 'english_name')
  final String? englishName;
  @JsonKey(name: 'iso_639_1')
  final String? iso6391;
  @JsonKey(name: 'name')
  final String? name;

  MovieTVSpokenLanguage copyWith({
    String? englishName,
    String? iso6391,
    String? name,
  }) =>
      MovieTVSpokenLanguage(
        englishName: englishName ?? this.englishName,
        iso6391: iso6391 ?? this.iso6391,
        name: name ?? this.name,
      );

  Map<String, dynamic> toJson() => _$MovieTVSpokenLanguageToJson(this);
}
