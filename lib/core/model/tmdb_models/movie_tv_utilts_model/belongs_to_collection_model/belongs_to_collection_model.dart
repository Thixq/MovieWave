// ignore_for_file:  sort_constructors_first
// ignore_for_file: public_member_api_docs

import 'package:json_annotation/json_annotation.dart';

part 'belongs_to_collection_model.g.dart';

@JsonSerializable()
class MovieTvBelongsToCollection {
  MovieTvBelongsToCollection({
    this.id,
    this.name,
    this.posterPath,
    this.backdropPath,
  });
  @JsonKey(name: 'id')
  final int? id;
  @JsonKey(name: 'name')
  final String? name;
  @JsonKey(name: 'poster_path')
  final String? posterPath;
  @JsonKey(name: 'backdrop_path')
  final String? backdropPath;

  MovieTvBelongsToCollection copyWith({
    int? id,
    String? name,
    String? posterPath,
    String? backdropPath,
  }) {
    return MovieTvBelongsToCollection(
      id: id ?? this.id,
      name: name ?? this.name,
      posterPath: posterPath ?? this.posterPath,
      backdropPath: backdropPath ?? this.backdropPath,
    );
  }

  Map<String, dynamic> toJson() => _$MovieTvBelongsToCollectionToJson(this);

  factory MovieTvBelongsToCollection.fromJson(Map<String, dynamic> json) =>
      _$MovieTvBelongsToCollectionFromJson(json);
}
