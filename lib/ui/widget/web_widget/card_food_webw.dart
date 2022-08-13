import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:food_app/cubit/count_food_cubit.dart';
import 'package:food_app/cubit/love_cubit.dart';
import 'package:food_app/cubit/size_food_cubit.dart';
import 'package:food_app/models/food_model.dart';
import 'package:food_app/shared/theme.dart';
import 'package:food_app/ui/page/detail_page.dart';

class CardFoodWebWidget extends StatelessWidget {
  final FoodModel foodModel;

  const CardFoodWebWidget({
    Key? key,
    required this.foodModel,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => DetailPage(
              image: foodModel.image,
              name: foodModel.name,
            ),
          ),
        ).then((value) {
          context.read<SizeFoodCubit>().chageSize('');
          context.read<CountFoodCubit>().refreshCount();
          context.read<LoveCubit>().regreshLove();
        });
      },
      child: Container(
        width: lebar,
        decoration: BoxDecoration(
          color: cWhite,
          borderRadius: BorderRadius.circular(50),
        ),
        margin: EdgeInsets.only(
          bottom: 15,
          right: lebar * 0.05,
          left: lebar * 0.05,
        ),
        padding: const EdgeInsets.all(10),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Image.asset(
              foodModel.image,
              height: 95,
              width: 95,
            ),
            const SizedBox(height: 10),
            Text(
              foodModel.name,
              style: tBlack.copyWith(
                fontWeight: semiBold,
                fontSize: 18,
              ),
              maxLines: 1,
              overflow: TextOverflow.clip,
            ),
            const SizedBox(height: 5),
            Text(
              '${foodModel.include}🔥',
              style: tGrey.copyWith(
                fontWeight: medium,
                fontSize: 16,
              ),
              maxLines: 1,
              overflow: TextOverflow.clip,
            ),
          ],
        ),
      ),
    );
  }
}
