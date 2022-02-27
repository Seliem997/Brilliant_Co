
import 'package:brilliant/modules/settings/widgets/change_dialog.dart';
import 'package:brilliant/modules/settings/widgets/widgets.dart';
import 'package:brilliant/shared/components/components.dart';
import 'package:brilliant/shared/styles/colors.dart';
import 'package:flutter/material.dart';
import 'package:localize_and_translate/localize_and_translate.dart';

class SettingsView extends StatelessWidget {
  const SettingsView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {


    return Padding(
      padding: const EdgeInsets.all(15.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Settings',
            textAlign: TextAlign.center,
            style: Theme.of(context).textTheme.headline4!.copyWith(color: kDefaultBlackColor),
          ),
          verticalSpace(5),
          Text(
            'General',
            textAlign: TextAlign.center,
            style: Theme.of(context).textTheme.headline5!.copyWith(color: kDefaultBlackColor),
          ),
          verticalSpace(2),
          Column(
            children: [
              buildItemGeneralSettings(
                title: 'Change appearance',
                onTap: (){
                  showDialog(
                    context: context,
                    builder: (_) => const DialogAppearanceOverlay(
                     /* functionOne: (){
                        AppCubit.get(context).changeAppMode();
                      },
                      functionTwo: (){},
                      title:  'You want change to $appearanceMode',
                      valueOne: appearanceMode,
                      valueTwo: 'Cancel',*/
                    ),
                  );
                },
              ),
              buildItemGeneralSettings(
                title: 'Change Language',
                onTap: () {

                  translator.setNewLanguage(
                    context,
                    newLanguage: translator.activeLanguageCode == 'ar' ? 'en' : 'ar',
                    restart: true,
                  );
/*                  showDialog(
                    context: context,
                    builder: (_) => const DialogAppearanceOverlay(
                      *//*functionOne: (){},
                      functionTwo: (){},
                      title: 'title',
                      valueOne: 'value One',
                      valueTwo: 'Cancel',*//*
                    ),
                  );*/
                },
              ),

            ],
          ),

        ],
      ),
    );
  }


}
