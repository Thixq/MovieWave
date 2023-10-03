import 'package:flutter_test/flutter_test.dart';
import 'package:tmdb_movie/core/init/cache/shared_preferencs_cache.dart';

void main() {
  TestWidgetsFlutterBinding.ensureInitialized();

  test('constructor async', () async {
    final first = await deneme.instance();
    print(first!.a);
  });
}

class deneme {
  deneme._();
  int a = 0;
  static deneme? _instance;
  static Future<deneme?> instance() async {
    _instance ??= deneme._();
    await Future.delayed(const Duration(seconds: 5));
    _instance?.a = 1;
    return _instance;
  }
}
