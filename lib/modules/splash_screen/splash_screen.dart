import 'dart:async';

import 'package:flutter/material.dart';
import 'package:shop_app/modules/auth/auth_screen.dart';
import 'package:shop_app/shared/components/components.dart';
import '../../shared/styles/colors.dart';

class SplashScreen extends StatefulWidget {
  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    Timer(
      Duration(
        seconds: 5,
      ),
      () => navigateAndRemove(context, page: AuthScreen()),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          color: PRIMARY_COLOR,
          image: DecorationImage(
            image: AssetImage('assets/images/default.png'),
            fit: BoxFit.contain,
          ),
        ),
      ),
      // body: Image.asset(
      //   "assets/images/default.png",
      //   fit: BoxFit.contain,
      //   height: double.infinity,
      //   width: double.infinity,
      //   alignment: Alignment.center,
      // ),
    );
  }
}
