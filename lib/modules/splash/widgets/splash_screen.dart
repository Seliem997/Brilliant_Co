import 'package:brilliant/shared/components/navigate.dart';
import 'package:flutter/material.dart';

import '../../../shared/components/components.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {

  @override
  void initState() {
    super.initState();

    Future.delayed(const Duration(seconds: 2), (){
      navigateAndFinish(context, widget);
    });
  }
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Image.asset('assets/images/logo.png'),
    );
  }

}
