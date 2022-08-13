import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:food_app/cubit/count_food_cubit.dart';
import 'package:food_app/cubit/size_food_cubit.dart';
import 'package:food_app/shared/theme.dart';
import 'package:food_app/ui/page/detail_page.dart';

class CardFoodWebWidget extends StatelessWidget {
  final String image;
  final String name;
  final String desc;

  const CardFoodWebWidget({
    Key? key,
    required this.image,
    required this.name,
    required this.desc,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => DetailPage(
              image: image,
              name: name,
            ),
          ),
        ).then((value) {
          context.read<SizeFoodCubit>().chageSize('');
          context.read<CountFoodCubit>().refreshCount();
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
              image,
              height: 95,
              width: 95,
            ),
            const SizedBox(height: 10),
            Text(
              name,
              style: tBlack.copyWith(
                fontWeight: semiBold,
                fontSize: 18,
              ),
              maxLines: 1,
              overflow: TextOverflow.clip,
            ),
            const SizedBox(height: 5),
            Text(
              '$desc🔥',
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
