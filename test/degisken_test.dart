import 'package:dio/dio.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:tmdb_movie/core/constant/network_constant/network_constant.dart';
import 'package:tmdb_movie/core/model/tmdb_models/movie_model/movie_model.dart';
import 'package:tmdb_movie/core/model/tmdb_models/movie_tv_utilts_model/movie_tv_search_result_generic_model/movie_tv_search_result_generic_model.dart';
import 'package:tmdb_movie/core/model/tmdb_models/movie_tv_utilts_model/tv_utilts/tv_show_result_model/tv_show_result_model.dart';
import 'package:tmdb_movie/core/model/tmdb_models/tv_show_model/tv_show_model.dart';
import 'package:tmdb_movie/core/model/tmdb_models/tv_show_season_model/tv_show_season_model.dart';

void main() {
  final options = BaseOptions(
    baseUrl: NetworkConstant.baseUrl,
    headers: {
      'Authorization': NetworkConstant.bearerToken,
      'accept': 'application/json',
      'content-type': 'application/json',
    },
    queryParameters: {
      'append_to_response': 'images,videos,credits',
      // 'with_genres': '18',
    },
  );
  test('movie request', () async {
    final dio = Dio(options);
    final response =
        await dio.get<Map<String, dynamic>>('${NetworkConstant.moviePath}/550');
    final result = MovieModel().fromJson(response.data!);
    final similarId = result.similar?.results?.length;
    debugPrint(similarId.toString());
  });
  test('tv show request', () async {
    final dio = Dio(options);
    final response =
        await dio.get<Map<String, dynamic>>('${NetworkConstant.tvPath}/1402');
    final result = TvShowModel().fromJson(response.data!);
    debugPrint(result.name);
  });

  test('Tv Discover Request', () async {
    final discoverManager = Dio(options);
    final response = await discoverManager.get<Map<String, dynamic>>(
      '${NetworkConstant.discoverPath}${NetworkConstant.tvPath}',
    );
    final result = SearchResultModel<TvShowResult>.fromJson(
      response.data!,
      (p1) => TvShowResult.fromJson(p1! as Map<String, dynamic>),
    );

    debugPrint(result.results![0].name);
  });
  test('season request test', () async {
    final seasonRequest = Dio(options);
    final response = await seasonRequest.get<Map<String, dynamic>>(
      '${NetworkConstant.tvPath}/1396${NetworkConstant.seasonPath}/1',
    );
    final result = const SeasonModel().fromJson(response.data!);
    debugPrint(result.episodes![0].overview);
  });
}
