import 'dart:async';

import 'package:flutter/material.dart';
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
        child: Text(
          'FOOD APP',
          style: tWhite.copyWith(
            fontWeight: bold,
            fontSize: 24,
          ),
        ),
      ),
    );
  }
}
