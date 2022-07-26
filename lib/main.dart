import 'package:flutter/material.dart';
import 'package:food_app/cubit/categories_cubit.dart';
import 'package:food_app/cubit/count_food_cubit.dart';
import 'package:food_app/cubit/list_category_cubit.dart';
import 'package:food_app/cubit/list_item_cubit.dart';
import 'package:food_app/cubit/love_cubit.dart';
import 'package:food_app/cubit/page_cubit.dart';
import 'package:food_app/cubit/size_food_cubit.dart';
import 'package:food_app/cubit/splash_screen_cubit.dart';
import 'package:food_app/shared/navigator_key.dart';
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
        ),
        BlocProvider(
          create: (context) => SizeFoodCubit(),
        ),
        BlocProvider(
          create: (context) => CountFoodCubit(),
        ),
        BlocProvider(
          create: (context) => LoveCubit(),
        ),
        BlocProvider(
          create: (context) => ListItemCubit()..setList(),
        ),
        BlocProvider(
          create: (context) => ListCategoryCubit()..setList(),
        ),
        BlocProvider(
          create: (context) => PageCubit(),
        ),
        BlocProvider(
          create: (context) => SplashScreenCubit()..timer(),
        )
      ],
      child: MaterialApp(
        title: 'Food App',
        navigatorKey: NavigatorKey.navigatorKey,
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
