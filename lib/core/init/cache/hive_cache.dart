// ignore_for_file: strict_raw_type

import 'package:tmdb_movie/core/interface/ICacheManager.dart';

class HiveCacheManager<T> extends ICacheManager<T> {
  HiveCacheManager._();
  static HiveCacheManager? _instance;
  static HiveCacheManager? get instance => _instance ??= HiveCacheManager._();

  @override
  void addAllItem({required List<MapEntry<String, dynamic>> items}) {
    // TODO: implement addAllItem
  }

  @override
  void addItem({required MapEntry<String, dynamic> item}) {
    // TODO: implement addItem
  }

  @override
  List<T> getAllItem() {
    // TODO: implement getAllItem
    throw UnimplementedError();
  }

  @override
  T getItem({required String key}) {
    // TODO: implement getItem
    throw UnimplementedError();
  }

  @override
  void removeItem({required String key}) {
    // TODO: implement removeItem
  }
}
