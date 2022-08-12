import 'package:flutter_bloc/flutter_bloc.dart';

class SizeFoodCubit extends Cubit<String> {
  SizeFoodCubit() : super('');
  int count = 0;
  void chageSize(String newValue) {
    emit(newValue);
  }
}
