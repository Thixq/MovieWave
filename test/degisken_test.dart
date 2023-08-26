import 'package:dio/dio.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:tmdb_movie/core/constant/network_constant/network_constant.dart';
import 'package:tmdb_movie/core/enum/request_type_enum.dart';
import 'package:tmdb_movie/core/enum/tmdb_query_parameter_enum.dart';
import 'package:tmdb_movie/core/extension/tmdb_query_parameter_extension.dart';
import 'package:tmdb_movie/core/model/tmdb_models/movie_model/movie_model.dart';
import 'package:tmdb_movie/core/model/tmdb_models/movie_tv_utilts_model/movie_result_model/movie_result_model.dart';
import 'package:tmdb_movie/core/model/tmdb_models/movie_tv_utilts_model/movie_tv_search_result_generic_model/movie_tv_search_result_generic_model.dart';
import 'package:tmdb_movie/core/model/tmdb_models/movie_tv_utilts_model/tv_utilts/tv_show_result_model/tv_show_result_model.dart';
import 'package:tmdb_movie/core/model/tmdb_models/tv_show_model/tv_show_model.dart';
import 'package:tmdb_movie/core/model/tmdb_models/tv_show_season_model/tv_show_season_model.dart';
import 'package:tmdb_movie/core/network/network_manager.dart';

void main() {
  final asd = <String, dynamic>{};
  asd.addEntries([
    TmdbQueryParameter.ATR.parameter(),
  ]);
  final options = BaseOptions(
    baseUrl: NetworkConstant.baseUrl,
    headers: {
      'Authorization': NetworkConstant.bearerToken,
      'accept': 'application/json',
      'content-type': 'application/json',
    },
    queryParameters: asd,
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
    final asd = BaseOptions(baseUrl: 'https://jsonplaceholder.typicode.com');
    final seasonRequest = Dio(asd);
    final response = await seasonRequest.request(
      '/posts',
      data: const SeasonModel().toJson(),
    );
    // final result = const SeasonModel().fromJson(response.data );
    debugPrint(response.data.runtimeType.toString());
    // debugPrint(result.episodes![0].overview);
  });
  test('basic network layer test', () async {
    final service = NetworkManager<TvShowModel>(options: options);
    final result = await service.send<MovieModel, MovieModel>(
      '${NetworkConstant.moviePath}/503',
      requestType: RequestType.GET,
      parseModel: MovieModel(),
    );
    debugPrint(result.response!.title);
  });
}
