import 'package:brilliant/layout/app_layout_view.dart';
import 'package:brilliant/my_app.dart';
import 'package:brilliant/shared/network/local/cache_helper.dart';
import 'package:flutter/material.dart';
import 'package:localize_and_translate/localize_and_translate.dart';

import 'modules/on_boarding/on_boarding_view.dart';
import 'modules/splash/splash_view.dart';


void main() async{

  WidgetsFlutterBinding.ensureInitialized();

  await translator.init(
    localeType: LocalizationDefaultType.device,
    languagesList: <String>['ar', 'en'],
    assetsDirectory: 'assets/lang/',
  );

  await CacheHelper.init();

  dynamic isDarkMode = CacheHelper.returnData(key: 'isDarkMode');
  print(isDarkMode);

  dynamic onBoarding = CacheHelper.returnData(key: 'OnBoarding');
  print(onBoarding);

  Widget widget;
  if(onBoarding != null){
    if(onBoarding){
      widget = const AppLayoutView();
    } else{
      widget = const OnBoardingView();
    }
  } else{
    widget = const SplashView();
  }

  runApp(
    LocalizedApp(
      child: MyApp(
        isDark:isDarkMode,/*onBoarding: onBoarding*/startWidget: widget,
      ),
    ),
  );
}
