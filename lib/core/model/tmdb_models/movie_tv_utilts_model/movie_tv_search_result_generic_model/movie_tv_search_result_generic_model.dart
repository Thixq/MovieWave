// ignore_for_file: public_member_api_docs, cast_nullable_to_non_nullable, unnecessary_cast, lines_longer_than_80_chars, inference_failure_on_function_return_type, strict_raw_type

import 'package:json_annotation/json_annotation.dart';
import 'package:tmdb_movie/core/model/network_model.dart';

part 'movie_tv_search_result_generic_model.g.dart';

@JsonSerializable(genericArgumentFactories: true)
class SearchResultModel<T> extends INetworkModel<SearchResultModel, T> {
  SearchResultModel({
    this.page,
    this.results,
    this.totalPages,
    this.totalResults,
  });
  factory SearchResultModel.fromJson(
    Map<String, dynamic> json,
    T Function(Object? p1) fromJsonT,
  ) =>
      _$SearchResultModelFromJson(
        json,
        fromJsonT,
      );

  @JsonKey(name: 'page')
  final int? page;
  @JsonKey(name: 'results')
  final List<T>? results;
  @JsonKey(name: 'total_pages')
  final int? totalPages;
  @JsonKey(name: 'total_results')
  final int? totalResults;

  SearchResultModel<T> copyWith({
    int? page,
    List<T>? results,
    int? totalPages,
    int? totalResults,
  }) =>
      SearchResultModel(
        page: page ?? this.page,
        results: results ?? this.results,
        totalPages: totalPages ?? this.totalPages,
        totalResults: totalResults ?? this.totalResults,
      );

  @override
  Map<String, dynamic> toJson({Object Function(T? value)? toJsonT}) =>
      _$SearchResultModelToJson(this, toJsonT!);

  @override
  SearchResultModel<T> fromJson(
    Map<String, dynamic> json, {
    T Function(Object? p1)? fromJsonT,
  }) =>
      _$SearchResultModelFromJson(json, fromJsonT!);
}
