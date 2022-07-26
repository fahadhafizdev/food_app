import 'package:flutter/material.dart';
import 'package:food_app/shared/theme.dart';

class ButtonSosmed extends StatelessWidget {
  const ButtonSosmed({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: GestureDetector(
            onTap: () {
              Navigator.pushNamedAndRemoveUntil(
                  context, '/main-page', (route) => false);
            },
            child: Container(
              height: 42,
              margin: EdgeInsets.only(left: lebar * 0.05, right: 6),
              decoration: BoxDecoration(
                color: cGrey2,
                borderRadius: BorderRadius.circular(30),
              ),
              child: Center(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const SizedBox(
                      width: 18,
                    ),
                    Image.asset(
                      'assets/icons/icon_google.png',
                      height: 20,
                    ),
                    const SizedBox(width: 11),
                    Text(
                      'Google',
                      style: tGrey.copyWith(fontWeight: bold, fontSize: 13),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
        Expanded(
          child: GestureDetector(
            onTap: () {
              Navigator.pushNamedAndRemoveUntil(
                  context, '/main-page', (route) => false);
            },
            child: Container(
              height: 42,
              margin: EdgeInsets.only(left: 6, right: lebar * 0.05),
              decoration: BoxDecoration(
                color: cGrey2,
                borderRadius: BorderRadius.circular(30),
              ),
              child: Center(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const SizedBox(
                      width: 18,
                    ),
                    Image.asset(
                      'assets/icons/icon_fb.png',
                      height: 20,
                    ),
                    const SizedBox(width: 11),
                    Text(
                      'Facebook',
                      style: tGrey.copyWith(
                        fontWeight: bold,
                        fontSize: 13,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
