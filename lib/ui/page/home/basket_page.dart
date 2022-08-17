import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:food_app/shared/theme.dart';

class BasketPage extends StatelessWidget {
  const BasketPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          LottieBuilder.asset(
            'assets/lottie/empty-state-2.json',
            repeat: true,
            width: 300,
          ),
          const SizedBox(height: 12),
          ConstrainedBox(
            constraints: const BoxConstraints(
              maxWidth: 400,
            ),
            child: Text(
              'Basket page is coming soon',
              textAlign: TextAlign.center,
              style: tWhite.copyWith(
                fontWeight: medium,
                fontSize: 18,
              ),
            ),
          )
        ],
      ),
    );
  }
}
