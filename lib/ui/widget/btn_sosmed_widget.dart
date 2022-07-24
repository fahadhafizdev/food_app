import 'package:flutter/material.dart';
import 'package:food_app/shared/theme.dart';

class ButtonSosmed extends StatelessWidget {
  const ButtonSosmed({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: Container(
            height: 42,
            margin: const EdgeInsets.only(left: 16, right: 6),
            decoration: BoxDecoration(
              color: cGrey2,
              borderRadius: BorderRadius.circular(30),
            ),
            child: Center(
              child: Row(
                children: [
                  const SizedBox(
                    width: 18,
                  ),
                  Image.asset(
                    'assets/icons/icon_google.png',
                    height: 25,
                  ),
                  const SizedBox(width: 11),
                  Text(
                    'Google',
                    style: tGrey.copyWith(
                      fontWeight: bold,
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
        Expanded(
          child: Container(
            height: 42,
            margin: const EdgeInsets.only(left: 6, right: 16),
            decoration: BoxDecoration(
              color: cGrey2,
              borderRadius: BorderRadius.circular(30),
            ),
            child: Center(
              child: Row(
                children: [
                  const SizedBox(
                    width: 18,
                  ),
                  Image.asset(
                    'assets/icons/icon_fb.png',
                    height: 25,
                  ),
                  const SizedBox(width: 11),
                  Text(
                    'Facebook',
                    style: tGrey.copyWith(
                      fontWeight: bold,
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ],
    );
  }
}