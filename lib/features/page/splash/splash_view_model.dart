// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class SplashViewModel extends Bloc<SplashEvent, SplashState> {
  SplashViewModel(super.initialState) {
    on<SplashEvent>((event, emit) {
      emit(state.copyWith(count: state.count! + 1));
    });
  }
}

class SplashEvent {}

class SplashState extends Equatable {
  int? count;
  SplashState({
    this.count,
  });

  @override
  List<Object?> get props => [count];

  SplashState copyWith({
    int? count,
  }) {
    return SplashState(
      count: count ?? this.count,
    );
  }
}
