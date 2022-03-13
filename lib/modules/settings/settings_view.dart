
import 'package:brilliant/modules/settings/widgets/change_dialog.dart';
import 'package:brilliant/modules/settings/widgets/widgets.dart';
import 'package:brilliant/shared/components/components.dart';
import 'package:brilliant/shared/components/default_buttons.dart';
import 'package:brilliant/shared/styles/colors.dart';
import 'package:flutter/material.dart';
import 'package:localize_and_translate/localize_and_translate.dart';
import 'package:sizer/sizer.dart';

class SettingsView extends StatelessWidget {
  const SettingsView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {


    return Padding(
      padding: const EdgeInsets.all(15.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Text(
            'Settings'.tr(),
            style: Theme.of(context).textTheme.headline4,
          ),

          verticalSpace(2),
          Column(
            children: [
              Text(
                'General'.tr(),
                // textAlign: TextAlign.center,
                style: Theme.of(context).textTheme.headline5,
              ),

              verticalSpace(5),

              buildItemGeneralSettings(
                title: 'Change appearance'.tr(),
                onTap: (){
                  showDialog(
                    context: context,
                    builder: (_) => const DialogAppearanceMode(
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
                title: 'Change Language'.tr(),
                onTap: () {
                  showDialog(
                    context: context,
                    builder: (_) => const DialogChangeLanguage(),
                  );
                },
              ),

              const Divider(color: kDefaultSecondColor,),

              buildItemGeneralSettings(
                title: 'faq'.tr(),
                onTap: () { },
              ),

              buildItemGeneralSettings(
                title: 'Documentation'.tr(),
                onTap: () { },
              ),

              verticalSpace(5),
              DefaultGradientButton(
                text: 'BUY NOW'.tr(),
                function: (){
                  showModalBottomSheet(
                      backgroundColor: Colors.transparent,
                      context: context,
                      builder: (context) {
                        return Container(
                          height: 40.h,
                          decoration: const BoxDecoration(
                            color: kLightGreyColor,
                            borderRadius: BorderRadius.vertical(top: Radius.circular(50)),
                          ),
                          child: Padding(
                            padding: EdgeInsets.all(5.w),
                            child: buildRequestServiceSheet(context),
                          ),
                        );
                      });
                },),

            ],
          ),

        ],
      ),
    );
  }


}
