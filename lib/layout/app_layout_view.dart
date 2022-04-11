import 'package:brilliant/layout/cubit/cubit.dart';
import 'package:brilliant/layout/cubit/states.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:localize_and_translate/localize_and_translate.dart';

class AppLayoutView extends StatelessWidget {
  const AppLayoutView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<AppCubit,AppStates>(
      listener: (context,state) => {},
      builder: (context, state) {

        var cubit=AppCubit.get(context);

        return Scaffold(

          body: cubit.bottomScreens[cubit.currentIndex],
          bottomNavigationBar: BottomNavigationBar(
            currentIndex: cubit.currentIndex,

            onTap: (index) {
              cubit.changeBottom(index);
            },
            items: [

              BottomNavigationBarItem(
                icon: const Icon(
                  Icons.info_outline_rounded,
                ),
                label: 'information'.tr(),
              ),
              BottomNavigationBarItem(
                icon: const Icon(
                  Icons.home,
                ),
                label: 'home'.tr(),
              ),
              BottomNavigationBarItem(
                icon: const Icon(
                    Icons.settings,
                ),
                // label: translator.translate('settings'),
                label: 'settings'.tr(),
              ),

            ],
          ),
        ) ;
      },
    );
  }
}
