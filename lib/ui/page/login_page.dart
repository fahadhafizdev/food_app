import 'package:flutter/material.dart';
import 'package:food_app/shared/theme.dart';
import 'package:food_app/ui/widget/btn_sosmed_widget.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  bool isLogin = true;
  @override
  Widget build(BuildContext context) {
    Widget btnLogin() {
      return Container(
        height: 42,
        width: lebar,
        margin: EdgeInsets.symmetric(
          horizontal: lebar * 0.05,
          vertical: lebar * 0.05,
        ),
        child: ElevatedButton(
          style: btnStyle1,
          onPressed: () {
            Navigator.pushNamedAndRemoveUntil(
                context, '/main-page', (route) => false);
          },
          child: Text(
            'Login',
            style: tWhite.copyWith(
              fontWeight: semiBold,
              fontSize: 17,
            ),
          ),
        ),
      );
    }

    Widget btnRegister() {
      return Container(
        height: 42,
        width: lebar,
        margin: EdgeInsets.symmetric(
          horizontal: lebar * 0.05,
          vertical: lebar * 0.05,
        ),
        child: ElevatedButton(
          style: btnStyle1,
          onPressed: () {
            Navigator.pushNamedAndRemoveUntil(
                context, '/main-page', (route) => false);
          },
          child: Text(
            'Create account',
            style: tWhite.copyWith(
              fontWeight: semiBold,
              fontSize: 17,
            ),
          ),
        ),
      );
    }

    Widget authContent() {
      return Container(
        width: lebar,
        margin: const EdgeInsets.symmetric(horizontal: 20),
        decoration: BoxDecoration(
          color: cWhite,
          borderRadius: BorderRadius.circular(30),
        ),
        child: Column(
          children: [
            Row(
              children: [
                Expanded(
                  child: GestureDetector(
                    onTap: () {
                      setState(() {
                        isLogin = false;
                      });
                    },
                    child: Container(
                      height: 53,
                      decoration: BoxDecoration(
                        color: isLogin ? cWhite : cOrange,
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
                ),
                Expanded(
                  child: GestureDetector(
                    onTap: () {
                      setState(() {
                        isLogin = true;
                      });
                    },
                    child: Container(
                      height: 53,
                      decoration: BoxDecoration(
                        color: isLogin ? cOrange : cWhite,
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
                ),
              ],
            ),
            const SizedBox(height: 27),
            const ButtonSosmed(),
            isLogin
                ? const SizedBox.shrink()
                : Container(
                    height: 42,
                    width: lebar,
                    margin: EdgeInsets.fromLTRB(
                      lebar * 0.05,
                      lebar * 0.05,
                      lebar * 0.05,
                      0,
                    ),
                    padding: const EdgeInsets.fromLTRB(10, 0, 10, 0),
                    decoration: BoxDecoration(
                      color: cGrey2,
                      borderRadius: BorderRadius.circular(30),
                    ),
                    child: Center(
                      child: TextFormField(
                        decoration: InputDecoration.collapsed(
                          hintText: 'Name',
                          hintStyle: tGrey.copyWith(
                            fontWeight: regular,
                          ),
                        ),
                      ),
                    ),
                  ),
            Container(
              height: 42,
              width: lebar,
              margin: EdgeInsets.symmetric(
                horizontal: lebar * 0.05,
                vertical: lebar * 0.05,
              ),
              padding: const EdgeInsets.fromLTRB(10, 0, 10, 0),
              decoration: BoxDecoration(
                color: cGrey2,
                borderRadius: BorderRadius.circular(30),
              ),
              child: Center(
                child: TextFormField(
                  decoration: InputDecoration.collapsed(
                    hintText: 'Email adress',
                    hintStyle: tGrey.copyWith(
                      fontWeight: regular,
                    ),
                  ),
                ),
              ),
            ),
            Container(
              height: 42,
              width: lebar,
              margin: EdgeInsets.symmetric(
                horizontal: lebar * 0.05,
              ),
              padding: const EdgeInsets.fromLTRB(10, 0, 10, 0),
              decoration: BoxDecoration(
                color: cGrey2,
                borderRadius: BorderRadius.circular(30),
              ),
              child: Center(
                child: TextFormField(
                  obscureText: true,
                  decoration: InputDecoration.collapsed(
                    hintText: 'Password',
                    hintStyle: tGrey.copyWith(
                      fontWeight: regular,
                    ),
                  ),
                ),
              ),
            ),
            isLogin ? btnLogin() : btnRegister(),
          ],
        ),
      );
    }

    Widget contentMobile() {
      return SingleChildScrollView(
        child: Column(
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
            SizedBox(
              height: tinggi * 0.05,
            ),
          ],
        ),
      );
    }

    Widget authContentWeb() {
      return Container(
        margin:
            EdgeInsets.symmetric(horizontal: 40, vertical: isLogin ? 100 : 50),
        decoration: BoxDecoration(
          color: cWhite,
          borderRadius: BorderRadius.circular(30),
        ),
        child: SingleChildScrollView(
          child: Column(
            children: [
              Row(
                children: [
                  Expanded(
                    child: GestureDetector(
                      onTap: () {
                        setState(() {
                          isLogin = false;
                        });
                      },
                      child: Container(
                        height: 53,
                        decoration: BoxDecoration(
                          color: isLogin ? cWhite : cOrange,
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
                  ),
                  Expanded(
                    child: GestureDetector(
                      onTap: () {
                        setState(() {
                          isLogin = true;
                        });
                      },
                      child: Container(
                        height: 53,
                        decoration: BoxDecoration(
                          color: isLogin ? cOrange : cWhite,
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
                  ),
                ],
              ),
              const SizedBox(height: 27),
              const ButtonSosmed(),
              isLogin
                  ? const SizedBox.shrink()
                  : Container(
                      height: 42,
                      width: lebar,
                      margin: EdgeInsets.fromLTRB(
                        lebar * 0.05,
                        lebar * 0.05,
                        lebar * 0.05,
                        0,
                      ),
                      padding: const EdgeInsets.fromLTRB(10, 0, 10, 0),
                      decoration: BoxDecoration(
                        color: cGrey2,
                        borderRadius: BorderRadius.circular(30),
                      ),
                      child: Center(
                        child: TextFormField(
                          decoration: InputDecoration.collapsed(
                            hintText: 'Name',
                            hintStyle: tGrey.copyWith(
                              fontWeight: regular,
                            ),
                          ),
                        ),
                      ),
                    ),
              Container(
                height: 42,
                width: lebar,
                margin: EdgeInsets.symmetric(
                  horizontal: lebar * 0.05,
                  vertical: lebar * 0.05,
                ),
                padding: const EdgeInsets.fromLTRB(10, 0, 10, 0),
                decoration: BoxDecoration(
                  color: cGrey2,
                  borderRadius: BorderRadius.circular(30),
                ),
                child: Center(
                  child: TextFormField(
                    decoration: InputDecoration.collapsed(
                      hintText: 'Email adress',
                      hintStyle: tGrey.copyWith(
                        fontWeight: regular,
                      ),
                    ),
                  ),
                ),
              ),
              Container(
                height: 42,
                width: lebar,
                margin: EdgeInsets.symmetric(
                  horizontal: lebar * 0.05,
                ),
                padding: const EdgeInsets.fromLTRB(10, 0, 10, 0),
                decoration: BoxDecoration(
                  color: cGrey2,
                  borderRadius: BorderRadius.circular(30),
                ),
                child: Center(
                  child: TextFormField(
                    obscureText: true,
                    decoration: InputDecoration.collapsed(
                      hintText: 'Password',
                      hintStyle: tGrey.copyWith(
                        fontWeight: regular,
                      ),
                    ),
                  ),
                ),
              ),
              isLogin ? btnLogin() : btnRegister(),
            ],
          ),
        ),
      );
    }

    Widget contentWeb() {
      return Center(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const SizedBox(width: 20),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'Order snack\nto your seat',
                  textAlign: TextAlign.center,
                  style: tWhite.copyWith(
                    fontWeight: bold,
                    fontSize: 34,
                  ),
                ),
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
            Expanded(child: authContentWeb())
          ],
        ),
      );
    }

    return Scaffold(
      backgroundColor: cBlack,
      body: LayoutBuilder(
        builder: (BuildContext context, BoxConstraints constraints) {
          if (constraints.maxWidth <= 800) {
            return contentMobile();
          } else {
            return contentWeb();
          }
        },
      ),
    );
  }
}
