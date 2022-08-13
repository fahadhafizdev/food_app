import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:food_app/models/food_model.dart';

class ListItemCubit extends Cubit<List<FoodModel>> {
  ListItemCubit() : super([]);

  void setList() {
    List<FoodModel> listFood = [
      FoodModel(
        id: 1,
        cal: 145,
        desc:
            'The cheese is melted and just about completely forms a liquid with the tomato sauce at the time of serving. The taste is of bread, cheese and a tomato sauce made with ripes tomatoes. The main ingredients for the Pizza are basil, mozzarella cheese and red tomatoes.',
        image: 'assets/images/pizza1.png',
        include: 'Cheesy pizza',
        name: 'Pizza Marg',
        rating: 5.0,
        statusLove: 0,
        time: 30,
      ),
      FoodModel(
        id: 2,
        cal: 145,
        desc:
            'Soft toasted buns combined with two layers of Australian beef served with a special sauce, lettuce, chopped onions, freshly sliced ​​tomatoes and pickled cucumbers with a sprinkling of savory sesame.',
        image: 'assets/images/burger1.png',
        include: 'Double paty',
        name: 'Hamburger',
        rating: 4.0,
        statusLove: 0,
        time: 20,
      ),
      FoodModel(
        id: 3,
        cal: 125,
        desc:
            'The French Fries is melted and just about completely forms a liquid with the tomato sauce at the time of serving. The taste is of bread, cheese and a tomato sauce made with ripes tomatoes. The main ingredients for the Pizza are basil, mozzarella cheese and red tomatoes.',
        image: 'assets/images/kentang1.png',
        include: 'French Fries',
        name: 'French Fries',
        rating: 3.0,
        statusLove: 0,
        time: 10,
      ),
      FoodModel(
        id: 4,
        cal: 105,
        desc:
            'Soft toasted buns combined with 100% Australian beef with fresh pickles, chopped onions, tomato sauce, mustard sauce, and savory cheese slices.',
        image: 'assets/images/burger2.png',
        include: 'Burger cheese',
        name: 'Hamburger',
        rating: 4.5,
        statusLove: 0,
        time: 15,
      ),
    ];
    emit(listFood);
  }
}
