
import 'package:brilliant/shared/styles/themes.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get/get.dart';
import 'package:localize_and_translate/localize_and_translate.dart';
import 'package:sizer/sizer.dart';

import 'layout/cubit/cubit.dart';
import 'layout/cubit/states.dart';
import 'modules/splash/splash_view.dart';

class MyApp extends StatelessWidget {
  const MyApp({Key? key,required this.isDark,required this.startWidget,/* required this.onBoarding*/}) : super(key: key);

  // final dynamic onBoarding;
  final Widget startWidget;

  final dynamic isDark;

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (BuildContext context) => AppCubit()..changeAppMode(modeFromShared: isDark),
      child: BlocConsumer<AppCubit,AppStates>(
        listener: (context,state) {},
        builder: (context,state){
          return Sizer(
              builder: (context, orientation, deviceType) {
                return GetMaterialApp(
                  debugShowCheckedModeBanner: false,
                  theme: lightTheme,
                  darkTheme: darkTheme,
                  themeMode: AppCubit.get(context).isDark ? ThemeMode.light :ThemeMode.dark   ,
                  home: startWidget,
                  // home: const SplashView(),

                  localizationsDelegates: translator.delegates, // Android + iOS Delegates
                  locale: translator.activeLocale, // Active locale
                  supportedLocales: translator.locals(), // Locals list

                );
              }
          );
        },
      ),
    );
  }
}
