import 'dart:developer';

import 'package:flutter_bloc/flutter_bloc.dart';

class CountFoodCubit extends Cubit<int> {
  CountFoodCubit() : super(0);

  void changeCount() {
    emit(state + 1);
  }

  void minCount() {
    if (state != 0) {
      emit(state - 1);
    }
  }

  void refreshCount() {
    emit(0);
  }
}
