import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:is_it_safe/bloc/splash_bloc.dart';
import 'package:is_it_safe/generated/l10n.dart';
import 'package:is_it_safe/utils/config/custom_shared_preferences.dart';
import 'package:is_it_safe/utils/style/animations/fade_animation.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:is_it_safe/utils/style/colors.dart';

import 'home/home_page.dart';
import 'login_page.dart';
import 'on_boarding_page.dart';

class SplashPage extends StatefulWidget {
  @override
  _SplashPageState createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> {
  SplashBloc _bloc = SplashBloc();
  @override
  void initState() {
    super.initState();
    _bloc.getUsuarioLogin();
    _bloc.splashStream.listen(
      (event) async {
        if (event) {
          await Future.delayed(new Duration(seconds: 4));
          Navigator.of(context).pushReplacement(
            CupertinoPageRoute(
              builder: (context) => HomePage(),
            ),
          );
        } else {
          _loadData();
        }
      },
    );
  }

  @override
  void dispose() {
    super.dispose();
  }

  _loadData() async {
    await Future.delayed(new Duration(seconds: 4));
    await CustomSharedPreferences.readUsuarioOnBoarding().then(
      (value) async {
        debugPrint(value.toString());
        if (value) {
          Navigator.of(context).pushReplacement(
            CupertinoPageRoute(
              builder: (context) => LoginPage(),
            ),
          );
        } else {
          Navigator.of(context).pushAndRemoveUntil(
            CupertinoPageRoute(
              builder: (context) => OnBoardingPage(),
            ),
            (route) => false,
          );
        }
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).backgroundColor,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            FadeAnimation(0.5, _icon()),
            FadeAnimation(1.4, _textTitle()),
          ],
        ),
      ),
    );
  }

  Padding _textTitle() {
    return Padding(
      padding: const EdgeInsets.all(20.0),
      child: Text(
        S.of(context).appTitle,
        textAlign: TextAlign.center,
        style: GoogleFonts.poppins(
          color: primaryTextColor,
          fontSize: 30,
          fontWeight: FontWeight.bold,
        ),
      ),
    );
  }

  _icon() {
    return Padding(
      padding: const EdgeInsets.only(bottom: 16),
      child: SvgPicture.asset(
        'images/app_icon.svg',
        height: MediaQuery.of(context).size.height * 0.2,
      ),
    );
  }
}
