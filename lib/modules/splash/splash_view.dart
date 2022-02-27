import 'package:brilliant/modules/splash/widgets/splash_screen.dart';
import 'package:brilliant/shared/styles/colors.dart';
import 'package:flutter/material.dart';

class SplashView extends StatelessWidget {
  const SplashView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: kDefaultColor,
      body: SplashScreen(),
    );
  }
}
