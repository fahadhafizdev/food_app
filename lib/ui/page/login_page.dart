import 'package:flutter/material.dart';
import 'package:food_app/shared/theme.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Widget authContent() {
      return Container(
        height: 346,
        width: lebar,
        margin: EdgeInsets.symmetric(horizontal: lebar * 0.05),
        decoration: BoxDecoration(
          color: cWhite,
          borderRadius: BorderRadius.circular(30),
        ),
        child: Column(
          children: [
            Row(
              children: [
                Expanded(
                  child: Container(
                    height: 53,
                    decoration: BoxDecoration(
                      color: cWhite,
                      borderRadius: const BorderRadius.only(
                        topLeft: Radius.circular(30),
                      ),
                    ),
                    child: Center(
                      child: Text(
                        'Sign up',
                        style: tBlack.copyWith(
                          fontWeight: bold,
                          fontSize: 16,
                        ),
                      ),
                    ),
                  ),
                ),
                Expanded(
                  child: Container(
                    height: 53,
                    decoration: BoxDecoration(
                      color: cOrange,
                      borderRadius: const BorderRadius.only(
                        topRight: Radius.circular(30),
                      ),
                    ),
                    child: Center(
                      child: Text(
                        'Sign in',
                        style: tBlack.copyWith(
                          fontWeight: bold,
                          fontSize: 16,
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
            const SizedBox(height: 27),
            Row(
              children: [
                Expanded(
                  child: Container(
                    height: 42,
                    margin: EdgeInsets.only(left: 16, right: 6),
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
                    margin: EdgeInsets.only(left: 6, right: 16),
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
            ),
          ],
        ),
      );
    }

    return Scaffold(
      backgroundColor: cBlack,
      body: Column(
        children: [
          SizedBox(
            height: tinggi * 0.1,
          ),
          Center(
            child: Text(
              'Order snack\nto your seat',
              textAlign: TextAlign.center,
              style: tWhite.copyWith(
                fontWeight: bold,
                fontSize: 34,
              ),
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Container(
                height: 100,
                width: 100,
                decoration: const BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage('assets/images/vector_burger.png'),
                  ),
                ),
              ),
              Container(
                height: 100,
                width: 100,
                decoration: const BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage('assets/images/vector_donat.png'),
                  ),
                ),
              ),
              Container(
                height: 100,
                width: 100,
                decoration: const BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage('assets/images/vector_hotdog.png'),
                  ),
                ),
              ),
            ],
          ),
          SizedBox(
            height: tinggi * 0.05,
          ),
          authContent(),
        ],
      ),
    );
  }
}
