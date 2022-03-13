import 'package:bloc/bloc.dart';
import 'package:brilliant/layout/cubit/states.dart';
import 'package:brilliant/modules/home/home_view.dart';
import 'package:brilliant/modules/information/information_view.dart';
import 'package:brilliant/modules/settings/settings_view.dart';
import 'package:brilliant/shared/network/local/cache_helper.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class AppCubit extends Cubit<AppStates>{
  AppCubit() : super(AppInitialState());

  static AppCubit get(context) => BlocProvider.of(context);

  int currentIndex = 1;

  List<Widget> bottomScreens=[

     const InformationView(),
    const HomeView(),
  //   BottomSheet(
  //     backgroundColor: Colors.green.withOpacity(.5),
  //     onClosing: (){},
  //     builder: (context){
  //     return Padding(
  //       padding: const EdgeInsets.all(20.0),
  //       child: Container(
  //         height: 40.h,
  //         decoration: BoxDecoration(
  //         color: Colors.teal,
  //         borderRadius: BorderRadius.vertical(top: Radius.circular(50)),
  //         ),
  //         child: Padding(
  //         padding: EdgeInsets.all(5.w),
  //         child: Column(
  //         crossAxisAlignment: CrossAxisAlignment.start,
  //         children: [
  //
  //         ],
  //         ),
  //         ),
  //         ),
  //     );
  // },),
    const SettingsView(),
  ];

  void changeBottom(int index){

    currentIndex = index;

    emit(AppChangeBottomState());
  }

  bool isDark = false;

  void changeAppMode({bool? modeFromShared}){

    if(modeFromShared != null){
      isDark = modeFromShared;
      emit(AppChangeModeState());
    }else {
      isDark = !isDark;
      CacheHelper.saveData(key: 'isDarkMode', value: isDark).then((value) {
        emit(AppChangeModeState());
      });
    }

  }


}