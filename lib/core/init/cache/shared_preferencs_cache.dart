import 'package:tmdb_movie/core/interface/ICacheManager.dart';
import 'package:shared_preferences/shared_preferences.dart';

class CacheManager extends ICacheManager {
  CacheManager._();
  static CacheManager? _instance;
  static CacheManager? get instance => _instance ??= CacheManager._();

  @override
  void addItem({required String key, required Object item}) {}

  @override
  void getItem({required String key}) {
    // TODO: implement getItem
  }

  @override
  void removeItem({required String key}) {
    // TODO: implement removeItem
  }
}
