import 'package:flutter/material.dart';

import 'package:food_app/ui/page/login_page.dart';
import 'package:food_app/ui/page/splashscreen_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Food App',
      debugShowCheckedModeBanner: false,
      routes: {
        '/': (context) => const SplashScreenPage(),
        '/login-page': (context) => const LoginPage(),
      },
    );
  }
}
