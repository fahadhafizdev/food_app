import 'package:flutter/material.dart';
import 'package:food_app/shared/theme.dart';
import 'package:food_app/ui/widget/card_categories_widget.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Widget header() {
      return Container(
        margin: EdgeInsets.fromLTRB(12, tinggi * 0.12, 0, 0),
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
              height: 35,
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

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        header(),
        categories(),
      ],
    );
  }
}
