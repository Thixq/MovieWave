import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:tmdb_movie/features/page/splash/splash_view.dart';
import 'package:tmdb_movie/features/page/splash/splash_view_model.dart';

void main() {
  runApp(
    MultiBlocProvider(
      providers: [
        BlocProvider<SplashViewModel>(
          create: (_) => SplashViewModel(SplashState(count: 0)),
        ),
      ],
      child: const MovieWave(),
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
