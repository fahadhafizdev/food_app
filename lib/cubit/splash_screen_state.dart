part of 'splash_screen_cubit.dart';

abstract class SplashScreenState extends Equatable {
  const SplashScreenState();

  @override
  List<Object> get props => [];
}

class SplashScreenInitial extends SplashScreenState {}

class SplashScreenLoading extends SplashScreenState {}

class SplashScreenSuccess extends SplashScreenState {}
