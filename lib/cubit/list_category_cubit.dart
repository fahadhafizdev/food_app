import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:food_app/models/category_model.dart';

class ListCategoryCubit extends Cubit<List<CategoryModel>> {
  ListCategoryCubit() : super([]);

  void setList() {
    List<CategoryModel> listItem = [
      CategoryModel(image: 'assets/icons/icon_pizza.png', name: 'Pizza'),
      CategoryModel(image: 'assets/icons/icon_burger.png', name: 'Burger'),
      CategoryModel(image: 'assets/icons/icon_pop_corn.png', name: 'Popcorn'),
      CategoryModel(image: 'assets/icons/icon_drink.png', name: 'Drink'),
    ];
    emit(listItem);
  }
}
