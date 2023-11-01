import 'package:shared_preferences/shared_preferences.dart';

class SharedCacheManager {
  SharedCacheManager._();
  static SharedCacheManager? _instance;
  static Future<SharedCacheManager?> instance() async {
    _instance ??= SharedCacheManager._();
    _instance?._sharedPreferencesInstance =
        await SharedPreferences.getInstance();
    return _instance;
  }

  late final SharedPreferences _sharedPreferencesInstance;

  void writeDataBool(MapEntry<String, bool> data) =>
      _sharedPreferencesInstance.setBool(data.key, data.value);

  void wrtieDataString(MapEntry<String, String> data) =>
      _sharedPreferencesInstance.setString(data.key, data.value);

  bool? getDataBool(String key) => _sharedPreferencesInstance.getBool(key);

  String? getDataString(String key) =>
      _sharedPreferencesInstance.getString(key);

  Future<bool> removeData(String key) => _sharedPreferencesInstance.remove(key);
}
