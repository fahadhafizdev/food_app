import 'package:flutter/material.dart';
import 'package:food_app/shared/theme.dart';
import 'package:food_app/ui/page/home/home_page.dart';

class MainPage extends StatelessWidget {
  const MainPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Widget cardButton() {
      return FloatingActionButton(
        onPressed: () {},
        backgroundColor: cYellow,
        child: Image.asset(
          'assets/icons/icon_search.png',
          height: 25,
        ),
      );
    }

    Widget customBottomNav() {
      return ClipRRect(
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
              // context.read<PageCubit>().setPage(value);
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
                    'assets/icons/icon_home.png',
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
                    'assets/icons/icon_disc.png',
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
                    'assets/icons/icon_keranjang.png',
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
                    'assets/icons/icon_user.png',
                    height: 25,
                  ),
                ),
                label: '',
                tooltip: 'account',
              ),
            ],
          ),
        ),
      );
    }

    return Scaffold(
      backgroundColor: cBlack,
      bottomNavigationBar: customBottomNav(),
      floatingActionButton: cardButton(),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      body: HomePage(),
    );
  }
}
