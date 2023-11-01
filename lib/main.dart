import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:tmdb_movie/core/init/localization/localization_manager.dart';
import 'package:tmdb_movie/features/page/splash/splash_view.dart';
import 'package:tmdb_movie/features/page/splash/splash_view_model.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await EasyLocalization.ensureInitialized();
  runApp(
    EasyLocalization(
      supportedLocales: LocalizationManager.instance!.supportedLanguage,
      path: LocalizationManager.instance!.translationsPath,
      fallbackLocale: LocalizationManager.instance!.fallBackLanguage,
      child: MultiBlocProvider(
        providers: [
          BlocProvider<SplashViewModel>(
            create: (_) => SplashViewModel(SplashState(count: 0)),
          ),
        ],
        child: const MovieWave(),
      ),
    ),
  );
}

///APP START ROOT
class MovieWave extends StatelessWidget {
  const MovieWave({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: SplashView(),
    );
  }
}
