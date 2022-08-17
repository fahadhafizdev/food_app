import 'package:flutter/material.dart';
import 'package:food_app/shared/theme.dart';
import 'package:lottie/lottie.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          LottieBuilder.asset(
            'assets/lottie/empty-state-3.json',
            repeat: true,
            width: 300,
          ),
          const SizedBox(height: 12),
          ConstrainedBox(
            constraints: const BoxConstraints(
              maxWidth: 400,
            ),
            child: Text(
              'Profile page is coming soon',
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
