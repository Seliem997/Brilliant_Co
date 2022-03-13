import 'package:brilliant/modules/on_boarding/on_boarding_view.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    goToNextPage();

    return Center(

      child: Image.asset('assets/images/logo.png'),
    );
  }

  void goToNextPage() {
    Future.delayed(const Duration(seconds: 3), (){
      Get.to( () => const OnBoardingView(), transition: Transition.circularReveal );
    });
  }
}
