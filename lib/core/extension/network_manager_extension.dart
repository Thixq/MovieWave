part of '../network/network_manager.dart';

extension _CoreServiceExtension on NetworkManager {
  R? _jsonParser<R, T extends INetworkModel<T, dynamic>>(
    dynamic data, {
    required T parseModel,
  }) {
    try {
      if (data is List<dynamic>) {
        return data
            .map(
              (e) => parseModel.fromJson(
                e is Map<String, dynamic> ? e : {},
              ),
            )
            .cast<T>()
            .toList() as R;
      }
      if (data is Map<String, dynamic>) {
        return parseModel.fromJson(data) as R;
      }
    } catch (e) {
      throw '';
    }
    return null;
  }
}
