import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:food_app/cubit/categories_cubit.dart';
import 'package:food_app/shared/theme.dart';

class CardCategoriesWidget extends StatefulWidget {
  final String image;
  final String name;

  const CardCategoriesWidget({
    Key? key,
    required this.image,
    required this.name,
  }) : super(key: key);

  @override
  State<CardCategoriesWidget> createState() => _CardCategoriesWidgetState();
}

class _CardCategoriesWidgetState extends State<CardCategoriesWidget> {
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<CategoriesCubit, String>(
      builder: (context, state) {
        return GestureDetector(
          onTap: () {
            context.read<CategoriesCubit>().chageCategori(widget.name);
          },
          child: Container(
            height: 150,
            width: 110,
            margin: const EdgeInsets.only(
              right: 16,
            ),
            decoration: BoxDecoration(
              color: state == widget.name ? cYellow : cWhite,
              borderRadius: BorderRadius.circular(30),
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.asset(
                  widget.image,
                  height: 40,
                ),
                const SizedBox(
                  height: 8,
                ),
                Text(
                  widget.name,
                  style: tBlack.copyWith(
                    fontWeight: semiBold,
                    fontSize: 18,
                  ),
                ),
                Container(
                  height: 32,
                  width: 32,
                  margin: const EdgeInsets.only(top: 8),
                  decoration: BoxDecoration(
                    color: state == widget.name ? cWhite : cYellow,
                    borderRadius: BorderRadius.circular(100),
                  ),
                  child: Center(
                    child: Image.asset(
                      'assets/icons/icon_arrow.png',
                      height: 12,
                      width: 12,
                    ),
                  ),
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}
