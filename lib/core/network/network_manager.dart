import 'package:dio/dio.dart';
import 'package:dio/src/adapters/io_adapter.dart'
    if (dart.library.html) 'package:dio/src/adapters/browser_adapter.dart'
    as adapter;
import 'package:tmdb_movie/core/enum/request_type_enum.dart';
import 'package:tmdb_movie/core/extension/request_type_extension.dart';
import 'package:tmdb_movie/core/interface/INetworkManager.dart';
import 'package:tmdb_movie/core/interface/INetworkModel.dart';
import 'package:tmdb_movie/core/model/response_model.dart';

part '../extension/network_manager_extension.dart';

class NetworkManager<E extends INetworkModel<E, dynamic>>
    extends INetworkManager<E> with DioMixin {
  NetworkManager({required BaseOptions options}) {
    this.options = options;
    httpClientAdapter = adapter.createAdapter();
  }
  E? errorModel;

  ResponseModel<R?, E?>? _getResult<R, T extends INetworkModel<T, dynamic>>(
    dynamic data, {
    required T parseModel,
  }) {
    final result = _jsonParser<R, T>(data, parseModel: parseModel);
    final respone = ResponseModel<R?, E?>(result, errorModel);
    return respone;
  }

  @override
  Future<ResponseModel<R?, E?>> send<T extends INetworkModel<T, dynamic>, R>(
    String path, {
    required RequestType requestType,
    required T parseModel,
    CancelToken? cancelToken,
    Map<String, dynamic>? queryParameters,
    Options? options,
  }) async {
    options ??= Options();
    options.method = requestType.rawValue;
    // ignore: inference_failure_on_function_invocation
    final response = await request(
      path,
      options: options,
    );
    return _getResult<R, T>(response.data, parseModel: parseModel)!;
  }

  @override
  void addBaseHeader(Iterable<MapEntry<String, String>> header) {
    options.headers.addEntries(header);
  }

  @override
  void clearAllHeader() {
    options.headers.clear();
  }

  @override
  void removeAtHeader(String key) {
    options.headers.remove(key);
  }
}
