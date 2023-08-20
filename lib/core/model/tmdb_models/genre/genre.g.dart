// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'genre.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Genre _$GenreFromJson(Map<String, dynamic> json) => Genre(
      genres: (json['genres'] as List<dynamic>?)
          ?.map((e) => GenreElement.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$GenreToJson(Genre instance) => <String, dynamic>{
      'genres': instance.genres,
    };

GenreElement _$GenreElementFromJson(Map<String, dynamic> json) => GenreElement(
      id: json['id'] as int?,
      name: json['name'] as String?,
    );

Map<String, dynamic> _$GenreElementToJson(GenreElement instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
    };
