import 'package:flutter/material.dart';
import 'package:food_app/shared/theme.dart';
import 'package:food_app/ui/widget/card_categories_widget.dart';
import 'package:food_app/ui/widget/card_food_widget.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Widget header() {
      return Container(
        margin: EdgeInsets.fromLTRB(12, tinggi * 0.1, 0, 0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Get your food',
              style: tGrey.copyWith(
                fontWeight: semiBold,
                fontSize: 18,
              ),
            ),
            Text(
              'Delivered!',
              style: tWhite.copyWith(
                fontWeight: semiBold,
                fontSize: 35,
              ),
            ),
            const SizedBox(
              height: 25,
            ),
          ],
        ),
      );
    }

    Widget categories() {
      return Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.only(
              left: 12,
              bottom: 16,
            ),
            child: Text(
              'Catagories',
              style: tWhite.copyWith(
                fontWeight: medium,
                fontSize: 22,
              ),
            ),
          ),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              children: const [
                SizedBox(width: 22),
                CardCategoriesWidget(
                  name: 'Pizza',
                  image: 'assets/icons/icon_pizza.png',
                ),
                CardCategoriesWidget(
                  name: 'Burger',
                  image: 'assets/icons/icon_burger.png',
                ),
                CardCategoriesWidget(
                  name: 'Popcorn',
                  image: 'assets/icons/icon_pop_corn.png',
                ),
                CardCategoriesWidget(
                  name: 'Drink',
                  image: 'assets/icons/icon_drink.png',
                ),
              ],
            ),
          ),
        ],
      );
    }

    Widget popular() {
      return Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.only(
              left: 12,
              bottom: 16,
              top: 37,
            ),
            child: Text(
              'Popular Now',
              style: tWhite.copyWith(
                fontWeight: medium,
                fontSize: 22,
              ),
            ),
          ),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              children: const [
                SizedBox(width: 22),
                CardFoodWidget(
                  name: 'Pizza Marg',
                  image: 'assets/images/pizza1.png',
                  desc: 'Cheesy pizza',
                ),
                CardFoodWidget(
                  name: 'Hamburger',
                  image: 'assets/images/burger1.png',
                  desc: 'Double paty',
                ),
                CardFoodWidget(
                  name: 'French Fries',
                  image: 'assets/images/kentang1.png',
                  desc: 'French fries',
                ),
                CardFoodWidget(
                  name: 'Hamburger',
                  image: 'assets/images/burger2.png',
                  desc: 'Burger cheese',
                ),
              ],
            ),
          ),
        ],
      );
    }

    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          header(),
          categories(),
          popular(),
        ],
      ),
    );
  }
}