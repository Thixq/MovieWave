import 'package:dio/dio.dart' show CancelToken, Options;
import 'package:tmdb_movie/core/enum/request_type_enum.dart';
import 'package:tmdb_movie/core/model/network_model.dart';
import 'package:tmdb_movie/core/model/response_model.dart';

abstract class INetworkManager<E extends INetworkModel<E, dynamic>> {
  Future<ResponseModel<R?, E?>> send<T extends INetworkModel<T, dynamic>, R>(
    String path, {
    required RequestType requestType,
    required T parseModel,
    CancelToken? cancelToken,
    Map<String, dynamic>? queryParameters,
    Options? options,
  });
}
