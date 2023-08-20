// ignore_for_file: public_member_api_docs

import 'package:json_annotation/json_annotation.dart';
import 'package:tmdb_movie/core/model/network_model.dart';

part 'genre.g.dart';

@JsonSerializable()
class Genre extends INetworkModel<Genre, int> {
  Genre({
    this.genres,
  });

  @JsonKey(name: 'genres')
  final List<GenreElement>? genres;

  Genre copyWith({
    List<GenreElement>? genres,
  }) =>
      Genre(
        genres: genres ?? this.genres,
      );

  @override
  Genre fromJson(
    Map<String, dynamic> json, {
    int Function(Object? p1)? fromJsonT,
  }) =>
      _$GenreFromJson(json);

  @override
  Map<String, dynamic> toJson({Object Function(int? value)? toJsonT}) =>
      _$GenreToJson(this);
}

@JsonSerializable()
class GenreElement {
  GenreElement({
    this.id,
    this.name,
  });

  factory GenreElement.fromJson(Map<String, dynamic> json) =>
      _$GenreElementFromJson(json);
  @JsonKey(name: 'id')
  final int? id;
  @JsonKey(name: 'name')
  final String? name;

  GenreElement copyWith({
    int? id,
    String? name,
  }) =>
      GenreElement(
        id: id ?? this.id,
        name: name ?? this.name,
      );

  Map<String, dynamic> toJson() => _$GenreElementToJson(this);
}
