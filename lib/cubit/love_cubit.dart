import 'package:flutter_bloc/flutter_bloc.dart';

class LoveCubit extends Cubit<int> {
  LoveCubit() : super(0);

  void setLike() {
    emit(1);
  }

  void setDislike() {
    emit(0);
  }

  void setChangeLove() {
    if (state == 0) {
      setLike();
    } else {
      setDislike();
    }
  }

  void regreshLove() {
    emit(0);
  }
}
