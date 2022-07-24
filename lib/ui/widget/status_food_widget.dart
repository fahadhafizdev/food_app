import 'package:flutter/material.dart';
import 'package:food_app/shared/theme.dart';

class StatusFoodWidget extends StatelessWidget {
  final String image;
  final String text;
  const StatusFoodWidget({
    Key? key,
    required this.image,
    required this.text,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Image.asset(
          image,
          height: 16,
        ),
        const SizedBox(width: 7),
        Text(
          text,
          style: tGrey.copyWith(
            fontWeight: semiBold,
            fontSize: 16,
          ),
        ),
      ],
    );
  }
}
