import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:food_app/cubit/page_cubit.dart';
import 'package:food_app/shared/theme.dart';
import 'package:food_app/ui/page/home/home_page.dart';
import 'package:food_app/ui/widget/show_dialog_widget/dialog_coming_widget.dart';

class MainPage extends StatelessWidget {
  const MainPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Future<void> showDialogComing() async {
      return showDialog(
        context: context,
        builder: (BuildContext context) => DialogComingWidget(),
      );
    }

    Widget cardButton() {
      return LayoutBuilder(
        builder: (context, constraints) {
          if (constraints.maxWidth <= 600) {
            return FloatingActionButton(
              onPressed: () {
                showDialogComing();
              },
              backgroundColor: cYellow,
              child: Image.asset(
                'assets/icons/icon_search.png',
                height: 25,
              ),
            );
          } else {
            return Column(
              children: [
                const SizedBox(
                  height: 40,
                ),
                FloatingActionButton(
                  onPressed: () {
                    showDialogComing();
                  },
                  backgroundColor: cYellow,
                  child: Image.asset(
                    'assets/icons/icon_search.png',
                    height: 25,
                  ),
                ),
                SizedBox(height: 20),
                FloatingActionButton(
                  onPressed: () {},
                  backgroundColor: cBlackBold,
                  child: Image.asset(
                    'assets/icons/icon_home.png',
                    height: 25,
                  ),
                ),
                SizedBox(height: 20),
                FloatingActionButton(
                  onPressed: () {},
                  backgroundColor: cBlackBold,
                  child: Image.asset(
                    'assets/icons/icon_disc.png',
                    height: 25,
                  ),
                ),
                SizedBox(height: 20),
                FloatingActionButton(
                  onPressed: () {},
                  backgroundColor: cBlackBold,
                  child: Image.asset(
                    'assets/icons/icon_keranjang.png',
                    height: 25,
                  ),
                ),
                SizedBox(height: 20),
                FloatingActionButton(
                  onPressed: () {},
                  backgroundColor: cBlackBold,
                  child: Image.asset(
                    'assets/icons/icon_user.png',
                    height: 25,
                  ),
                ),
              ],
            );
          }
        },
      );
    }

    Widget customBottomNav() {
      return LayoutBuilder(
        builder: (context, constraints) {
          return (constraints.maxWidth <= 600)
              ? ClipRRect(
                  borderRadius: const BorderRadius.vertical(
                    top: Radius.circular(30),
                  ),
                  child: BottomAppBar(
                    shape: const CircularNotchedRectangle(),
                    clipBehavior: Clip.antiAlias,
                    notchMargin: 10,
                    child: BottomNavigationBar(
                      currentIndex: 0, //index
                      onTap: (value) {
                        print(value);
                        context.read<PageCubit>().setStatus(value);
                      },
                      backgroundColor: cBlackBold,
                      type: BottomNavigationBarType.fixed,
                      items: [
                        BottomNavigationBarItem(
                          icon: Container(
                            margin: const EdgeInsets.only(
                              top: 20,
                            ),
                            child: Image.asset(
                              (context.read<PageCubit>().state == 0)
                                  ? 'assets/icons/icon_home_light.png'
                                  : 'assets/icons/icon_home.png',
                              height: 25,
                            ),
                          ),
                          label: '',
                          tooltip: 'home',
                        ),
                        BottomNavigationBarItem(
                          icon: Container(
                            margin: const EdgeInsets.only(
                              top: 20,
                            ),
                            child: Image.asset(
                              (context.read<PageCubit>().state == 1)
                                  ? 'assets/icons/icon_disc_light.png'
                                  : 'assets/icons/icon_disc.png',
                              height: 25,
                            ),
                          ),
                          label: '',
                          tooltip: 'voucher',
                        ),
                        BottomNavigationBarItem(
                          icon: Container(
                            margin: const EdgeInsets.only(
                              top: 20,
                            ),
                            child: Image.asset(
                              (context.read<PageCubit>().state == 2)
                                  ? 'assets/icons/icon_keranjang_light.png'
                                  : 'assets/icons/icon_keranjang.png',
                              height: 25,
                            ),
                          ),
                          label: '',
                          tooltip: 'shop',
                        ),
                        BottomNavigationBarItem(
                          icon: Container(
                            margin: const EdgeInsets.only(
                              top: 20,
                            ),
                            child: Image.asset(
                              (context.read<PageCubit>().state == 3)
                                  ? 'assets/icons/icon_user_light.png'
                                  : 'assets/icons/icon_user.png',
                              height: 25,
                            ),
                          ),
                          label: '',
                          tooltip: 'account',
                        ),
                      ],
                    ),
                  ),
                )
              : SizedBox();
        },
      );
    }

    Widget content(int value) {
      switch (value) {
        case 0:
          return HomePage();

        default:
          return HomePage();
      }
    }

    return LayoutBuilder(
      builder: (context, constraints) {
        return BlocBuilder<PageCubit, int>(
          builder: (context, state) {
            return Scaffold(
              backgroundColor: cBlack,
              bottomNavigationBar: customBottomNav(),
              floatingActionButton: cardButton(),
              floatingActionButtonLocation: (constraints.maxWidth <= 600)
                  ? FloatingActionButtonLocation.centerDocked
                  : FloatingActionButtonLocation.miniEndTop,
              body: content(state),
            );
          },
        );
      },
    );
  }
}
