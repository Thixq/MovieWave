import 'package:tmdb_movie/core/interface/ICacheManager.dart';

class HiveCacheManager extends ICacheManager {
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
  getAllItem() {
    // TODO: implement getAllItem
    throw UnimplementedError();
  }

  @override
  getItem({required String key}) {
    // TODO: implement getItem
    throw UnimplementedError();
  }

  @override
  void removeItem({required String key}) {
    // TODO: implement removeItem
  }
}
