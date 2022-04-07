
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
      padding: const EdgeInsets.all(20.0),
      child: Column(
        children: [
          verticalSpace(5),
          Align(
            alignment: AlignmentDirectional.topStart,
            child: buildTextHeader(text: 'Settings'),
          ),

          verticalSpace(3),
          Text(
            'General'.tr(),
            // textAlign: TextAlign.center,
            style: Theme.of(context).textTheme.headline5,
          ),

          verticalSpace(5),

          buildItemGeneralSettings(
            title: 'Change appearance',
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
            title: 'Change Language',
            onTap: () {
              showDialog(
                context: context,
                builder: (_) => const DialogChangeLanguage(),
              );
            },
          ),

          verticalSpace(5),
          const Divider(thickness: 1,color: kDefaultSecondColor,),
          verticalSpace(5),
          buildTextBody(text: 'version : '.tr()+'1.0.1'),
          const Spacer(),
          DefaultGradientButton(
            text: 'BUY NOW',
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
          verticalSpace(3),
        ],
      ),
    );
  }


}
