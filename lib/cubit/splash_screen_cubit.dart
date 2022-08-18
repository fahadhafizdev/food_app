import 'dart:async';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:food_app/shared/navigator_key.dart';

part 'splash_screen_state.dart';

class SplashScreenCubit extends Cubit<SplashScreenState> {
  SplashScreenCubit() : super(SplashScreenInitial());

  Future<void> timer() async {
    emit(SplashScreenLoading());
    Timer(const Duration(seconds: 3), () {
      emit(SplashScreenSuccess());
      NavigatorKey.navigatorKey.currentState!
          .pushNamedAndRemoveUntil('/login-page', (route) => false);
    });
  }
}
