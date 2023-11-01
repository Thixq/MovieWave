import 'package:flutter_test/flutter_test.dart';

void main() {
  TestWidgetsFlutterBinding.ensureInitialized();

  test('constructor async', () async {
    final first = await Deneme.instance();
    print(first!.a);
  });
}

class Deneme {
  Deneme._();
  int a = 0;
  static Deneme? _instance;
  static Future<Deneme?> instance() async {
    _instance ??= Deneme._();
    await Future.delayed(const Duration(seconds: 5));
    _instance?.a = 1;
    return _instance;
  }
}
