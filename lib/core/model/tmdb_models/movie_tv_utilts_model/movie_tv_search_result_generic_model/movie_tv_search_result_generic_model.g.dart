// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'movie_tv_search_result_generic_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

SearchResultModel<T> _$SearchResultModelFromJson<T>(
  Map<String, dynamic> json,
  T Function(Object? json) fromJsonT,
) =>
    SearchResultModel<T>(
      page: json['page'] as int?,
      results: (json['results'] as List<dynamic>?)?.map(fromJsonT).toList(),
      totalPages: json['total_pages'] as int?,
      totalResults: json['total_results'] as int?,
    );

Map<String, dynamic> _$SearchResultModelToJson<T>(
  SearchResultModel<T> instance,
  Object? Function(T value) toJsonT,
) =>
    <String, dynamic>{
      'page': instance.page,
      'results': instance.results?.map(toJsonT).toList(),
      'total_pages': instance.totalPages,
      'total_results': instance.totalResults,
    };
