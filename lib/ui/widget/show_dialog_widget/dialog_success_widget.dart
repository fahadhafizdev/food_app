import 'package:flutter/material.dart';
import 'package:food_app/shared/theme.dart';
import 'package:lottie/lottie.dart';

class DialogSuccessWidget extends StatelessWidget {
  const DialogSuccessWidget({Key? key}) : super(key: key);

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
              'Done',
              style: tBlack.copyWith(
                fontWeight: bold,
                fontSize: 18,
              ),
            ),
          ),
        ),
      );
    }

    return SizedBox(
      width: lebar - 40,
      child: AlertDialog(
        backgroundColor: cWhite,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(21),
        ),
        content: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            LottieBuilder.asset(
              'assets/lottie/104556-success.json',
              repeat: false,
              height: 250,
              width: 250,
            ),
            Text(
              'Success order',
              style: tBlack.copyWith(
                fontWeight: semiBold,
                fontSize: 20,
              ),
            ),
            const SizedBox(height: 12),
            btnClose(),
          ],
        ),
      ),
    );
  }
}
