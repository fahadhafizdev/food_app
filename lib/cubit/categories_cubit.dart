import 'package:flutter_bloc/flutter_bloc.dart';

class CategoriesCubit extends Cubit<String> {
  CategoriesCubit() : super('');

  void chageCategori(String newValue) {
    emit(newValue);
  }
}
