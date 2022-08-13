import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:food_app/cubit/count_food_cubit.dart';
import 'package:food_app/cubit/love_cubit.dart';
import 'package:food_app/cubit/size_food_cubit.dart';
import 'package:food_app/models/food_model.dart';
import 'package:food_app/shared/theme.dart';
import 'package:food_app/ui/page/detail_page.dart';

class CardFoodWidget extends StatelessWidget {
  final FoodModel foodModel;

  const CardFoodWidget({
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
              foodModel: foodModel,
            ),
          ),
        ).then((value) {
          context.read<SizeFoodCubit>().chageSize('');
          context.read<CountFoodCubit>().refreshCount();
          context.read<LoveCubit>().regreshLove();
        });
      },
      child: Container(
        height: 210,
        width: 164,
        decoration: BoxDecoration(
          color: cWhite,
          borderRadius: BorderRadius.circular(30),
        ),
        margin: const EdgeInsets.only(right: 15),
        padding: const EdgeInsets.all(10),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
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
              '${foodModel.desc}🔥',
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
