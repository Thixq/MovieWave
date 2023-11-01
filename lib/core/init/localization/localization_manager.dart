import 'dart:ui';

class LocalizationManager {
  LocalizationManager._();
  static LocalizationManager? _instance;
  static LocalizationManager? get instance =>
      _instance ??= LocalizationManager._();

  List<Locale> get supportedLanguage =>
      <Locale>[const Locale('tr', 'TR'), const Locale('en', 'US')];
  Locale get fallBackLanguage => const Locale('en', 'US');
  String get translationsPath => 'assets/translations';
}
