import 'package:dio/dio.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:tmdb_movie/core/constant/network_constant/network_constant.dart';
import 'package:tmdb_movie/core/model/tmdb_models/movie_model/movie_model.dart';
import 'package:tmdb_movie/core/model/tmdb_models/movie_tv_utilts_model/movie_tv_search_result_generic_model/movie_tv_search_result_generic_model.dart';
import 'package:tmdb_movie/core/model/tmdb_models/movie_tv_utilts_model/tv_utilts/tv_show_result_model/tv_show_result_model.dart';
import 'package:tmdb_movie/core/model/tmdb_models/tv_show_model/tv_show_model.dart';

void main() {
  final options = BaseOptions(
    baseUrl: NetworkConstant.baseUrl,
    headers: {
      'Authorization': NetworkConstant.bearerToken,
      'accept': 'application/json',
      'content-type': 'application/json',
    },
    queryParameters: {
      // 'append_to_response': 'images,videos,credits,similar',
      'with_genres': '18',
    },
  );
  test('movie request', () async {
    final dio = Dio(options);
    final response =
        await dio.get<Map<String, dynamic>>('${NetworkConstant.moviePath}/550');
    final result = MovieModel().fromJson(response.data!);
    final similarId = result.similar?.results?.length;
    print(similarId);
  });
  test('tv show request', () async {
    final dio = Dio(options);
    final response =
        await dio.get<Map<String, dynamic>>('${NetworkConstant.tvPath}/1402');
    final result = TvShowModel().fromJson(response.data!);
    print(result.name);
  });

  // test('vexana request', () async {
  //   final networkManager = NetworkManager<TMDBErrorModel>(options: options);
  //   final response = await networkManager.send<MovieModel, MovieModel>(
  //     '${NetworkConstant.moviePath}/550',
  //     parseModel: MovieModel(),
  //     method: RequestType.GET,
  //   );
  //   final similarId = response.data!.similar!.results![0].id;
  //   print(similarId);
  // });

  test('Tv Discover Request', () async {
    final discoverManager = Dio(options);
    final response = await discoverManager.get<Map<String, dynamic>>(
      '${NetworkConstant.discoverPath}${NetworkConstant.tvPath}',
    );
    final result = SearchResultModel<TvShowResult>.fromJson(
      response.data!,
      (p1) => TvShowResult.fromJson(p1! as Map<String, dynamic>),
    );

    print(result.results![0].name);
  });
}
