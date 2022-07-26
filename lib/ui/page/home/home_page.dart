import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:food_app/cubit/list_category_cubit.dart';
import 'package:food_app/cubit/list_item_cubit.dart';
import 'package:food_app/models/category_model.dart';
import 'package:food_app/models/food_model.dart';
import 'package:food_app/shared/theme.dart';
import 'package:food_app/ui/widget/card_categories_widget.dart';
import 'package:food_app/ui/widget/card_food_widget.dart';
import 'package:food_app/ui/widget/web_widget/card_food_webw.dart';

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
                BlocBuilder<ListCategoryCubit, List<CategoryModel>>(
                  builder: (context, state) {
                    return SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                      child: Row(
                        children: [
                          const SizedBox(width: 22),
                          ...state.map(
                            (e) => CardCategoriesWidget(
                                image: e.image, name: e.name),
                          )
                        ],
                      ),
                    );
                  },
                ),
              ],
            )
          : BlocBuilder<ListCategoryCubit, List<CategoryModel>>(
              builder: (context, state) {
                return Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                      child: Row(
                        children: [
                          const SizedBox(width: 22),
                          ...state.map(
                            (e) => CardCategoriesWidget(
                                image: e.image, name: e.name),
                          ),
                        ],
                      ),
                    ),
                  ],
                );
              },
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
                BlocBuilder<ListItemCubit, List<FoodModel>>(
                  builder: (context, state) {
                    return SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                      child: Row(
                        children: [
                          const SizedBox(width: 22),
                          ...state
                              .map((data) => CardFoodWidget(foodModel: data)),
                        ],
                      ),
                    );
                  },
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
                BlocBuilder<ListItemCubit, List<FoodModel>>(
                  builder: (context, state) {
                    return Column(
                      children: [
                        ...state
                            .map((data) => CardFoodWebWidget(foodModel: data)),
                      ],
                    );
                  },
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
