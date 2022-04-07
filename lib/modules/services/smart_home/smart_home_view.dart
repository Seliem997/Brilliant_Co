import 'package:brilliant/modules/services/smart_home/widgets.dart';
import 'package:brilliant/modules/services/widgets/widgets.dart';
import 'package:brilliant/shared/components/components.dart';
import 'package:brilliant/shared/components/default_buttons.dart';
import 'package:brilliant/shared/styles/colors.dart';
import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';
import 'package:localize_and_translate/localize_and_translate.dart';


class SmartHomeView extends StatelessWidget {
  const SmartHomeView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    List<String> smartHomeHeaderListServices =[
      'Lighting',
      'Curtains',
      'air conditioning',
      'smart cameras',
      'smart locks',
      'smart doorbell',
    ];
    List<String> smartHomeBodyListServices =[
      "You can open and close the lights remotely, and we can control the intensity of the lighting, and this will save you in energy consumption, thus achieving savings and control for you.",
      "You will control the opening and closing of the blinds and you can organize a scenario by opening and closing the blinds at a certain time.",
      "You will control the temperature of the place at any time, and you can regulate a certain temperature and program it at a specific time." ,
      "You will leave an eye in your home, meaning that you will see your home and your children all the time and reassure them with smart cameras.",
      "You can open and close the doors from the application on the mobile or through the fingerprint, and you will receive a notification on your mobile." ,
      "It provides you with the ability to watch a video of the visitor and talk to him with audio and video.",


    ];

    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Smart Home'.tr(),
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              buildRequestHeaderService(
                context,
                image: 'smart_details',
                text: 'Smart home solutions. Easily expand your Smart Home with Smart devices. Start building your smart home now with a wide set of useful automation.',
              ),
              verticalSpace(3),
              Container(
                height: 15.h,
                width: double.infinity,
                decoration: const BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage('assets/images/bannerSmart.png'),
                    fit: BoxFit.cover,
                  )
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    buildTextBody(text: 'What Smart Home Solutions do you want ?',color: Colors.white,fontSize: 14.sp),
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: 10.w),
                      child: buildTextBody(text: 'We provide complete solutions in various areas.',color: Colors.white),
                    ),
                  ],
                ),
              ),
              verticalSpace(2),
              Row(
                children: [
                  buildServiceProvided(
                    height: 34.3.h,
                    width: 30.5.w,
                    image: 'images/consulation',
                    textHead: 'Consulting',
                    textBody: 'Schedule a free consultation with our representative for an informative, no pressure experience.',
                  ),
                  buildServiceProvided(
                    height: 34.3.h,
                    image: 'images/installation',
                    textHead: 'Installation',
                    textBody: 'A professional installation at no cost to you to work in the way that best suits your needs.',
                  ),
                  buildServiceProvided(
                    height: 34.3.h,
                    image: 'images/maintenance',
                    textHead: 'Maintenance',
                    textBody: 'Protect your device with our smart maintenance plans.',
                  ),
                ],
              ),
              buildTextHeader(text: 'Services'),
              buildTextBody(
                isOverflew: false,
                isCenter: false,
                text: 'You will control all your household appliances such as:',
              ),
              Container(
                margin: EdgeInsets.symmetric(vertical: 2.h),
                padding: const EdgeInsets.all(12),
                color: kDefaultSecondColor.withOpacity(0.15),
                // color: kOnSecondaryContainerColor.withOpacity(.2),
                height: 55.h,
                child: ListView.separated(
                  shrinkWrap: true,
                  itemBuilder: (context, index) => smartHomeListServices(
                      textHeader: smartHomeHeaderListServices[index].tr(),
                      textBody: smartHomeBodyListServices[index].tr(),
                  ),
                  separatorBuilder: (context, index) => verticalSpace(2),
                  itemCount: smartHomeHeaderListServices.length,
                ),
              ),
              buildTextBody(
                isOverflew: false,
                text: 'We can make ordinary things smart, and do their own tasks remotely.',
                isCenter: false,
              ),
              verticalSpace(2),
              buildTextHeader(
                text: 'Watch Video',
                fontSize: 17.sp,
              ),
              verticalSpace(1),
              Image(
                image: const AssetImage('assets/images/smart_video.png'),
                // fit: BoxFit.cover,
                height: 20.h,
              ),
              verticalSpace(2),
              DefaultGradientButton(
                text: 'Request Service',
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
        ),
      ),
    );
  }
}

