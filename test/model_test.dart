// ignore_for_file: unused_local_variable, avoid_dynamic_calls

import 'package:flutter_test/flutter_test.dart';

void main() {
  test('MovieTvSearchResultModelTest', () {
    // final denemeModel = SearchResultModel<MovieResult>(
    //   page: 1,
    //   results: [MovieResult(id: 12)],
    //   totalPages: 2,
    //   totalResults: 50,
    // );
    // final json = {'1': 1};
    // final denemeId = denemeModel.fromJson(json);
    // expect(denemeId, 12);
  });

  test('request test', () async {
    // final baseOptions = BaseOptions(
    //   baseUrl: NetworkConstant.baseUrl,
    //   headers: {
    //     'Authorization': NetworkConstant.bearerToken,
    //     'accept': 'application/json',
    //     'content-type': 'application/json'
    //   },
    //   queryParameters: {'append_to_response': 'images,videos,credits,similar'},
    // );

    // final dio = Dio(baseOptions);
    // final response = await dio.get<Map<String, dynamic>>(
    //   '${NetworkConstant.moviePath}/550',
    // );

    // final data = MovieModel().fromJson(response.data!);

    // print(data.similar!.results![0].id);
  });
}
