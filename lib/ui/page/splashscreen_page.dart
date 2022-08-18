import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:food_app/cubit/splash_screen_cubit.dart';
import 'package:food_app/shared/theme.dart';

class SplashScreenPage extends StatelessWidget {
  const SplashScreenPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    tinggi = MediaQuery.of(context).size.height;
    lebar = MediaQuery.of(context).size.width;

    return BlocBuilder<SplashScreenCubit, SplashScreenState>(
      builder: (context, state) {
        return Scaffold(
          backgroundColor: cBlack,
          body: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.asset(
                  'assets/images/vector_donat.png',
                  height: 80,
                  width: 80,
                ),
                const SizedBox(height: 18),
                Text(
                  'FOOD APP',
                  style: tWhite.copyWith(
                    fontWeight: bold,
                    fontSize: 24,
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
