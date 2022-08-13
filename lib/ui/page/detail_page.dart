import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:food_app/cubit/count_food_cubit.dart';
import 'package:food_app/cubit/love_cubit.dart';
import 'package:food_app/cubit/size_food_cubit.dart';
import 'package:food_app/shared/theme.dart';
import 'package:food_app/ui/widget/show_dialog_widget/dialog_cart_widget.dart';
import 'package:food_app/ui/widget/status_food_widget.dart';

class DetailPage extends StatelessWidget {
  final String name;
  final String image;
  const DetailPage({
    Key? key,
    required this.image,
    required this.name,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Future<void> showDialogCart() async {
      return showDialog(
        context: context,
        builder: (BuildContext context) => const DialogCartWidget(),
      );
    }

    Widget topNavbar() {
      return Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          GestureDetector(
            behavior: HitTestBehavior.translucent,
            onTap: () {
              Navigator.pop(context);
            },
            child: Container(
              height: 40,
              width: 40,
              margin: EdgeInsets.only(left: lebar * 0.04),
              decoration: BoxDecoration(
                color: cGrey2,
                borderRadius: BorderRadius.circular(15),
              ),
              child: Center(
                child: Image.asset(
                  'assets/icons/icon_arrow_back.png',
                  height: 16,
                ),
              ),
            ),
          ),
          BlocBuilder<LoveCubit, int>(
            builder: (context, state) {
              return GestureDetector(
                onTap: () {
                  context.read<LoveCubit>().setChangeLove();
                },
                child: Container(
                  height: 40,
                  width: 40,
                  margin: EdgeInsets.only(right: lebar * 0.04),
                  decoration: BoxDecoration(
                    color: cYellow,
                    borderRadius: BorderRadius.circular(15),
                  ),
                  child: Center(
                    child: Image.asset(
                      state == 0
                          ? 'assets/icons/icon_love.png'
                          : 'assets/icons/icon_love_active.png',
                      height: 20,
                    ),
                  ),
                ),
              );
            },
          ),
        ],
      );
    }

    //NOTE : Widget Mobile
    Widget sizeFood() {
      return BlocBuilder<SizeFoodCubit, String>(
        builder: (context, state) {
          return Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Size',
                style: tGrey.copyWith(
                  fontWeight: semiBold,
                  fontSize: 16,
                ),
              ),
              const SizedBox(height: 16),
              GestureDetector(
                onTap: () {
                  context.read<SizeFoodCubit>().chageSize('S');
                },
                child: Container(
                  height: 32,
                  width: 32,
                  decoration: BoxDecoration(
                    color: (state == 'S') ? cYellow : cGrey2,
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Center(
                    child: Text(
                      'S',
                      style: tBlack.copyWith(fontWeight: bold, fontSize: 16),
                    ),
                  ),
                ),
              ),
              const SizedBox(height: 16),
              GestureDetector(
                onTap: () {
                  context.read<SizeFoodCubit>().chageSize('M');
                },
                child: Container(
                  height: 32,
                  width: 32,
                  decoration: BoxDecoration(
                    color: (state == 'M') ? cYellow : cGrey2,
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Center(
                    child: Text(
                      'M',
                      style: tBlack.copyWith(fontWeight: bold, fontSize: 16),
                    ),
                  ),
                ),
              ),
              const SizedBox(height: 16),
              GestureDetector(
                onTap: () {
                  context.read<SizeFoodCubit>().chageSize('L');
                },
                child: Container(
                  height: 32,
                  width: 32,
                  decoration: BoxDecoration(
                    color: (state == 'L') ? cYellow : cGrey2,
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Center(
                    child: Text(
                      'L',
                      style: tBlack.copyWith(fontWeight: bold, fontSize: 16),
                    ),
                  ),
                ),
              ),
              const SizedBox(height: 18),
              Text(
                'Quantity',
                style: tGrey.copyWith(
                  fontWeight: semiBold,
                  fontSize: 16,
                ),
              ),
              const SizedBox(height: 10),
              BlocBuilder<CountFoodCubit, int>(
                builder: (context, state) {
                  return Row(
                    children: [
                      GestureDetector(
                        onTap: () {
                          context.read<CountFoodCubit>().minCount();
                        },
                        child: Container(
                          height: 32,
                          width: 32,
                          decoration: BoxDecoration(
                            color: cGrey2,
                            borderRadius: BorderRadius.circular(10),
                          ),
                          child: Center(
                            child: Text(
                              '-',
                              style: tBlack.copyWith(
                                  fontWeight: bold, fontSize: 16),
                            ),
                          ),
                        ),
                      ),
                      const SizedBox(
                        width: 8,
                      ),
                      Text(
                        state.toString(),
                        style: tWhite.copyWith(
                          fontWeight: bold,
                          fontSize: 16,
                        ),
                      ),
                      const SizedBox(
                        width: 8,
                      ),
                      GestureDetector(
                        onTap: () {
                          context.read<CountFoodCubit>().changeCount();
                        },
                        child: Container(
                          height: 32,
                          width: 32,
                          decoration: BoxDecoration(
                            color: cYellow,
                            borderRadius: BorderRadius.circular(10),
                          ),
                          child: Center(
                            child: Text(
                              '+',
                              style: tBlack.copyWith(
                                  fontWeight: bold, fontSize: 16),
                            ),
                          ),
                        ),
                      ),
                    ],
                  );
                },
              ),
            ],
          );
        },
      );
    }

    Widget detailFood() {
      return Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const SizedBox(height: 24),
          Text(
            'Details',
            style: tWhite.copyWith(
              fontWeight: bold,
              fontSize: 24,
            ),
          ),
          const SizedBox(
            height: 12,
          ),
          Padding(
            padding: const EdgeInsets.only(right: 19),
            child: Text(
              'The cheese is melted and just about completely forms a liquid with the tomato sauce at the time of serving. The taste is of bread, cheese and a tomato sauce made with ripes tomatoes. The main ingredients for the Pizza are basil, mozzarella cheese and red tomatoes.',
              style: tGrey.copyWith(
                fontSize: 16,
                fontWeight: medium,
              ),
            ),
          )
        ],
      );
    }

    Widget btnAdd() {
      return Center(
        child: SizedBox(
          height: 54,
          width: 300,
          child: ElevatedButton(
            onPressed: () {
              showDialogCart();
            },
            style: btnStyle1,
            child: Text(
              'Add to cart',
              style: tBlack.copyWith(
                fontWeight: bold,
                fontSize: 18,
              ),
            ),
          ),
        ),
      );
    }

    //NOTE : Widget Web
    Widget sizeFoodWeb() {
      return BlocBuilder<SizeFoodCubit, String>(
        builder: (context, state) {
          return Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              GestureDetector(
                onTap: () {
                  context.read<SizeFoodCubit>().chageSize('S');
                },
                child: Container(
                  height: 32,
                  width: 32,
                  decoration: BoxDecoration(
                    color: state == 'S' ? cYellow : cGrey2,
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Center(
                    child: Text(
                      'S',
                      style: tBlack.copyWith(fontWeight: bold, fontSize: 16),
                    ),
                  ),
                ),
              ),
              const SizedBox(width: 16),
              GestureDetector(
                onTap: () {
                  context.read<SizeFoodCubit>().chageSize('M');
                },
                child: Container(
                  height: 32,
                  width: 32,
                  decoration: BoxDecoration(
                    color: state == 'M' ? cYellow : cGrey2,
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Center(
                    child: Text(
                      'M',
                      style: tBlack.copyWith(fontWeight: bold, fontSize: 16),
                    ),
                  ),
                ),
              ),
              const SizedBox(width: 16),
              GestureDetector(
                onTap: () {
                  context.read<SizeFoodCubit>().chageSize('L');
                },
                child: Container(
                  height: 32,
                  width: 32,
                  decoration: BoxDecoration(
                    color: state == 'L' ? cYellow : cGrey2,
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Center(
                    child: Text(
                      'L',
                      style: tBlack.copyWith(fontWeight: bold, fontSize: 16),
                    ),
                  ),
                ),
              ),
            ],
          );
        },
      );
    }

    Widget sizeCountWeb() {
      return BlocBuilder<CountFoodCubit, int>(
        builder: (context, state) {
          return Row(
            children: [
              GestureDetector(
                onTap: () {
                  context.read<CountFoodCubit>().minCount();
                },
                child: Container(
                  height: 32,
                  width: 32,
                  decoration: BoxDecoration(
                    color: cGrey2,
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Center(
                    child: Text(
                      '-',
                      style: tBlack.copyWith(fontWeight: bold, fontSize: 16),
                    ),
                  ),
                ),
              ),
              const SizedBox(
                width: 8,
              ),
              Text(
                state.toString(),
                style: tWhite.copyWith(
                  fontWeight: bold,
                  fontSize: 16,
                ),
              ),
              const SizedBox(
                width: 8,
              ),
              GestureDetector(
                onTap: () {
                  context.read<CountFoodCubit>().changeCount();
                },
                child: Container(
                  height: 32,
                  width: 32,
                  decoration: BoxDecoration(
                    color: cYellow,
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Center(
                    child: Text(
                      '+',
                      style: tBlack.copyWith(fontWeight: bold, fontSize: 16),
                    ),
                  ),
                ),
              ),
            ],
          );
        },
      );
    }

    Widget detailFoodWeb() {
      return Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const SizedBox(height: 24),
          Text(
            'Details',
            style: tWhite.copyWith(
              fontWeight: bold,
              fontSize: 24,
            ),
          ),
          const SizedBox(
            height: 12,
          ),
          Padding(
            padding: const EdgeInsets.only(right: 19),
            child: Text(
              'The cheese is melted and just about completely forms a liquid with the tomato sauce at the time of serving. The taste is of bread, cheese and a tomato sauce made with ripes tomatoes. The main ingredients for the Pizza are basil, mozzarella cheese and red tomatoes.',
              style: tGrey.copyWith(
                fontSize: 16,
                fontWeight: medium,
              ),
            ),
          )
        ],
      );
    }

    Widget content() {
      return LayoutBuilder(builder: (context, constraints) {
        if (constraints.maxWidth <= 700) {
          return Padding(
            padding: EdgeInsets.only(left: lebar * 0.04),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  name,
                  style: tWhite.copyWith(fontWeight: semiBold, fontSize: 40),
                ),
                const SizedBox(height: 30),
                Stack(
                  children: [
                    sizeFood(),
                    Align(
                      alignment: Alignment.center,
                      child: Container(
                        height: 253,
                        width: 253,
                        decoration: BoxDecoration(
                          image: DecorationImage(
                            image: AssetImage(image),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 30),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: const [
                    StatusFoodWidget(
                      image: 'assets/icons/icon_star.png',
                      text: '4.9',
                    ),
                    StatusFoodWidget(
                      image: 'assets/icons/icon_fire.png',
                      text: '145 cal',
                    ),
                    StatusFoodWidget(
                      image: 'assets/icons/icon_time.png',
                      text: '30 min',
                    ),
                  ],
                ),
                detailFood(),
                const SizedBox(
                  height: 30,
                ),
                btnAdd(),
                const SizedBox(
                  height: 50,
                ),
              ],
            ),
          );
        } else {
          return Padding(
            padding: EdgeInsets.only(left: lebar * 0.04),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBox(height: 30),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      height: 353,
                      width: 353,
                      decoration: BoxDecoration(
                        image: DecorationImage(
                          image: AssetImage(image),
                        ),
                      ),
                    ),
                    const SizedBox(width: 40),
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            name,
                            style: tWhite.copyWith(
                                fontWeight: semiBold, fontSize: 40),
                          ),
                          Text(
                            'Size',
                            style: tGrey.copyWith(
                              fontWeight: semiBold,
                              fontSize: 16,
                            ),
                          ),
                          const SizedBox(height: 16),
                          sizeFoodWeb(),
                          const SizedBox(height: 16),
                          Text(
                            'Quantity',
                            style: tGrey.copyWith(
                              fontWeight: semiBold,
                              fontSize: 16,
                            ),
                          ),
                          const SizedBox(height: 16),
                          sizeCountWeb(),
                          const SizedBox(height: 26),
                          Padding(
                            padding: const EdgeInsets.only(right: 20),
                            child: Divider(
                              color: cGrey,
                            ),
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: const [
                              StatusFoodWidget(
                                image: 'assets/icons/icon_star.png',
                                text: '4.9',
                              ),
                              StatusFoodWidget(
                                image: 'assets/icons/icon_fire.png',
                                text: '145 cal',
                              ),
                              StatusFoodWidget(
                                image: 'assets/icons/icon_time.png',
                                text: '30 min',
                              ),
                            ],
                          ),
                          Padding(
                            padding: const EdgeInsets.only(right: 20),
                            child: Divider(
                              color: cGrey,
                            ),
                          ),
                          detailFoodWeb(),
                        ],
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 30),
                const SizedBox(
                  height: 30,
                ),
                btnAdd(),
                const SizedBox(
                  height: 50,
                ),
              ],
            ),
          );
        }
      });
    }

    return Scaffold(
      backgroundColor: cBlack,
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: tinggi * 0.09,
            ),
            topNavbar(),
            const SizedBox(height: 20),
            content(),
          ],
        ),
      ),
    );
  }
}
