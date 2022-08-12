import 'package:flutter/material.dart';
import 'package:food_app/shared/theme.dart';
import 'package:lottie/lottie.dart';

class DialogComingWidget extends StatelessWidget {
  const DialogComingWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Widget btnClose() {
      return Center(
        child: SizedBox(
          height: 38,
          width: lebar,
          child: ElevatedButton(
            onPressed: () {
              Navigator.pop(context);
            },
            style: btnStyle1,
            child: Text(
              'Back',
              style: tBlack.copyWith(
                fontWeight: bold,
                fontSize: 18,
              ),
            ),
          ),
        ),
      );
    }

    return LayoutBuilder(
      builder: (context, constraints) {
        return AlertDialog(
          backgroundColor: cWhite,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(21),
          ),
          content: Builder(builder: (context) {
            return SizedBox(
              width: (constraints.maxWidth <= 600) ? lebar : 250,
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  LottieBuilder.asset(
                    'assets/lottie/90593-random-ask-questions.json',
                    height: 200,
                    width: 200,
                  ),
                  Text(
                    'Search is coming soon',
                    textAlign: TextAlign.center,
                    style: tBlack.copyWith(
                      fontWeight: semiBold,
                      fontSize: 20,
                    ),
                  ),
                  const SizedBox(height: 12),
                  btnClose(),
                ],
              ),
            );
          }),
        );
      },
    );
  }
}
