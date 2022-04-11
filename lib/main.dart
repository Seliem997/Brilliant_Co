import 'package:brilliant/layout/app_layout_view.dart';
import 'package:brilliant/my_app.dart';
import 'package:brilliant/shared/components/components.dart';
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
  print('Is Light Mode : $isDarkMode');

  dynamic onBoarding = CacheHelper.returnData(key: 'OnBoarding');
  print('On Boarding : $onBoarding');

  widget;
  if(onBoarding != null){
    if(onBoarding){
      widget = const AppLayoutView();
      print('Light mode value from cache is ${ CacheHelper.returnData(key: 'isDarkMode')}');
    } else{
      widget = const OnBoardingView();
    }
  } else{
    widget = const SplashView();
  }

  runApp(
    LocalizedApp(
      child: MyApp(
        isDark:isDarkMode,startWidget: const SplashView(),
      ),
    ),
  );
}
