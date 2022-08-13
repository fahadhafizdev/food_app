import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:food_app/cubit/list_category_cubit.dart';
import 'package:food_app/cubit/list_item_cubit.dart';
import 'package:food_app/shared/theme.dart';

class SplashScreenPage extends StatefulWidget {
  const SplashScreenPage({Key? key}) : super(key: key);

  @override
  State<SplashScreenPage> createState() => _SplashScreenPageState();
}

class _SplashScreenPageState extends State<SplashScreenPage> {
  @override
  void initState() {
    Timer(const Duration(seconds: 2), () {
      context.read<ListItemCubit>().setList();
      context.read<ListCategoryCubit>().setList();
      Navigator.pushNamedAndRemoveUntil(
          context, '/login-page', (route) => false);
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    tinggi = MediaQuery.of(context).size.height;
    lebar = MediaQuery.of(context).size.width;

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
  }
}
