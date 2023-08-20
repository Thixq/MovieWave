// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'belongs_to_collection_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

MovieTvBelongsToCollection _$MovieTvBelongsToCollectionFromJson(
        Map<String, dynamic> json) =>
    MovieTvBelongsToCollection(
      id: json['id'] as int?,
      name: json['name'] as String?,
      posterPath: json['poster_path'] as String?,
      backdropPath: json['backdrop_path'] as String?,
    );

Map<String, dynamic> _$MovieTvBelongsToCollectionToJson(
        MovieTvBelongsToCollection instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'poster_path': instance.posterPath,
      'backdrop_path': instance.backdropPath,
    };
