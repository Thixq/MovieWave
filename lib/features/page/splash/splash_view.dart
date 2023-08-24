import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:tmdb_movie/features/page/splash/splash_view_model.dart';

class SplashView extends StatefulWidget {
  const SplashView({super.key});

  @override
  State<SplashView> createState() => _SplashViewState();
}

class _SplashViewState extends State<SplashView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () => context.read<SplashViewModel>().add(SplashEvent()),
      ),
      body: BlocBuilder<SplashViewModel, SplashState>(
        builder: (context, state) => Center(
          child: Text('${state.count}'),
        ),
      ),
    );
  }
}
