import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';

class CategoriesCubit extends Cubit<String> {
  CategoriesCubit() : super('');
  void chageCategori(String newValue) {
    emit(newValue);
  }
}
