import 'package:flutter/material.dart';
import 'package:food_app/shared/theme.dart';
import 'package:food_app/ui/widget/card_categories_widget.dart';
import 'package:food_app/ui/widget/card_food_widget.dart';
import 'package:food_app/ui/widget/web_widget/card_food_webw.dart';
import 'package:lottie/lottie.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Widget header(BoxConstraints constraints) {
      return (constraints.maxWidth <= 600)
          ? Container(
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
            )
          : Container(
              margin: EdgeInsets.fromLTRB(12, tinggi * 0.1, 0, 0),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisSize: MainAxisSize.min,
                children: [
                  Text(
                    'Get your food',
                    textAlign: TextAlign.center,
                    style: tGrey.copyWith(
                      fontWeight: semiBold,
                      fontSize: 18,
                    ),
                  ),
                  const SizedBox(width: 14),
                  Text(
                    'Delivered!',
                    textAlign: TextAlign.center,
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

    Widget categories(BoxConstraints constraints) {
      return (constraints.maxWidth <= 600)
          ? Column(
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
            )
          : Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisSize: MainAxisSize.min,
              children: [
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

    Widget popular(BoxConstraints constraints) {
      return (constraints.maxWidth <= 600)
          ? Column(
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
            )
          : Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: EdgeInsets.only(
                    left: lebar * 0.05,
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
                Column(
                  children: const [
                    CardFoodWebWidget(
                      name: 'Pizza Marg',
                      image: 'assets/images/pizza1.png',
                      desc: 'Cheesy pizza',
                    ),
                    CardFoodWebWidget(
                      name: 'Hamburger',
                      image: 'assets/images/burger1.png',
                      desc: 'Double paty',
                    ),
                    CardFoodWebWidget(
                      name: 'French Fries',
                      image: 'assets/images/kentang1.png',
                      desc: 'French fries',
                    ),
                    CardFoodWebWidget(
                      name: 'Hamburger',
                      image: 'assets/images/burger2.png',
                      desc: 'Burger cheese',
                    ),
                  ],
                ),
              ],
            );
    }

    return LayoutBuilder(
      builder: (context, constraints) {
        if (constraints.maxWidth <= 600) {
          return SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                header(constraints),
                categories(constraints),
                popular(constraints),
                const SizedBox(height: 40),
              ],
            ),
          );
        } else {
          return SingleChildScrollView(
            child: Center(
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  header(constraints),
                  const SizedBox(height: 20),
                  categories(constraints),
                  popular(constraints),
                  const SizedBox(height: 40),
                ],
              ),
            ),
          );
        }
      },
    );
  }
}
