import 'package:brilliant/modules/services/widgets/widgets.dart';
import 'package:brilliant/shared/components/components.dart';
import 'package:brilliant/shared/components/default_buttons.dart';
import 'package:brilliant/shared/styles/colors.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

class SmartHomeView extends StatelessWidget {
  const SmartHomeView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Smart Home'
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              buildRequestHeaderService(context, image: 'smart_details', text: 'Smart home solutions. Easily expand your Smart Home with Smart devices. Start building your smart home now with a wide set of useful automation.',),
              verticalSpace(3),
              Image(
                image: const AssetImage('assets/images/bannerSmart.png'),
                height: 12.h,
                fit: BoxFit.cover,
              ),
              verticalSpace(2),
              Row(
                children: [
                  buildServiceProvided(
                    height: 33.h,
                    image: 'images/consulation',
                    textHead: 'Consulting',
                    textBody: 'Schedule a free consultation with our representative for an informative, no pressure experience.',
                  ),
                  buildServiceProvided(
                    height: 33.h,
                    image: 'images/installation',
                    textHead: 'Installation',
                    textBody: ' A professional installation at no cost to you to work in the way that best suits your needs.',
                  ),
                  buildServiceProvided(
                    height: 33.h,
                    image: 'images/maintenance',
                    textHead: 'Maintenance',
                    textBody: 'Protect your device with our smart maintenance plans.',
                  ),
                ],
              ),
              buildTextHeader(text: 'Services :'),
              verticalSpace(2),
              buildTextBody(
                isOverflew: false,
                text: 'We can make ordinary things smart, and do their own tasks remotely.',
                fontSize: 12.sp,
              ),
              verticalSpace(1.5),
              buildTextBody(
                isOverflew: false,
                text: 'Everyone is looking for safety, comfort and control over everything We can use the pieces to do something different.',
                fontSize: 12.sp,
              ),
              verticalSpace(1.5),
              buildTextBody(
                isOverflew: false,
                text: 'Some devices can be installed through which we can control the whole house.',
                fontSize: 12.sp,
              ),
              verticalSpace(1.5),
              buildTextBody(
                isOverflew: false,
                text: 'You can make a script for your daily routine and record it on an application.',
                fontSize: 12.sp,
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

