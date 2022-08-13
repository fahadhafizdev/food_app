import 'package:flutter_bloc/flutter_bloc.dart';

class PageCubit extends Cubit<int> {
  PageCubit() : super(0);

  void setStatus(int newValue) {
    emit(newValue);
  }
}
