import 'package:flutter/material.dart';
import 'package:food_app/shared/theme.dart';
import 'package:food_app/ui/widget/show_dialog_widget/dialog_success_widget.dart';
import 'package:lottie/lottie.dart';

class DialogCartWidget extends StatelessWidget {
  const DialogCartWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Future<void> showDialogSuccess() async {
      return showDialog(
        context: context,
        builder: (BuildContext context) => DialogSuccessWidget(),
      );
    }

    Widget btnClose() {
      return Center(
        child: SizedBox(
          height: 38,
          width: lebar,
          child: ElevatedButton(
            onPressed: () {
              Navigator.pop(context);
              showDialogSuccess();
            },
            style: btnStyle1,
            child: Text(
              'Yes, i\'m sure',
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
              'assets/lottie/78267-food-choice.json',
              height: 250,
              width: 250,
            ),
            Text(
              'Make sure your order',
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
