import 'package:flutter/material.dart';
import 'package:food_app/cubit/categories_cubit.dart';
import 'package:food_app/ui/page/home/home_page.dart';
import 'package:food_app/ui/page/home/main_page.dart';

import 'package:food_app/ui/page/login_page.dart';
import 'package:food_app/ui/page/splashscreen_page.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) => CategoriesCubit(),
        )
      ],
      child: MaterialApp(
        title: 'Food App',
        debugShowCheckedModeBanner: false,
        routes: {
          '/': (context) => const SplashScreenPage(),
          '/login-page': (context) => const LoginPage(),
          '/home-page': (context) => const HomePage(),
          '/main-page': (context) => const MainPage(),
        },
      ),
    );
  }
}