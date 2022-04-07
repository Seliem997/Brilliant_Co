import 'package:brilliant/modules/services/it_service/widgets.dart';
import 'package:brilliant/modules/services/widgets/widgets.dart';
import 'package:brilliant/shared/components/components.dart';
import 'package:brilliant/shared/components/default_buttons.dart';
import 'package:brilliant/shared/styles/colors.dart';
import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';
import 'package:localize_and_translate/localize_and_translate.dart';


class ItServicesView extends StatelessWidget {
  const ItServicesView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    List<String> headLines=[
      'Security Cameras',
      'Point Of Sale',
      'VOIP System',
      'Backup Solutions',
    ];

    return Scaffold(
      appBar: AppBar(
        title: Text(
          'IT Services'.tr(),
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
                image: 'it_details',
                text: 'Our time is characterized by amazing developments in technology and many “IT” services, if you are a small or large business owner you will need these services.',

              ),
              verticalSpace(1),
              buildTextHeader(text: 'Services',isBold: false,),
              verticalSpace(2),
              buildItService(
                context,
                serviceName:  headLines[0],
                serviceImage: 'security_cams',
                serviceDescription: 'Video camera recording peoples activities for detection is a video recording device that captures footage of your home and property',
                serviceInfo: 'You can watch them on a smartphone, tablet or computer from anywhere using the Internet.Most home security cameras are motion activated and will record when motion is detected, as well as send you an alert on your phone.Here, were going over the different types of cameras, whether you need one or not, how to install them, and more. If its security camera-related, weve got you covered.',
              ),
              verticalSpace(2),
              buildItService(
                context,
                serviceName:  headLines[1],
                serviceImage: 'pos',
                serviceDescription: 'Modern point of sale systems are completely digital, which means that you can check in with the customer wherever you are.',
                serviceInfo: 'Point of sale system allows your business to accept payments from customers and track sales, point of sale system used to refer to the cash register machine in the store.',
              ),
              verticalSpace(2),
              buildItService(
                context,
                serviceName:  headLines[2],
                serviceImage: 'voip',
                serviceDescription: 'Technology that allows you to make voice calls using a broadband Internet connection instead of a regular or analog phone line.',
              ),
              verticalSpace(2),
              buildItService(
                context,
                serviceName:  headLines[3],
                serviceImage: 'Backup',
                serviceDescription: 'It is usually designed to help you back up server data to a local server Another, cloud server, or mixed system. In particular, backups for hybrid systems are becoming more common.',
              ),
              verticalSpace(2),
              Center(
                child: buildTextHeader(
                  text: 'Let’s Talk about your IT Services',
                  fontSize: 13.5.sp,
                  isBold: false,
                ),
              ),
              verticalSpace(1),
              buildTextBody(
                text: 'Please contact us, and we will respond to you within 24 hours.',

              ),
              verticalSpace(2),
              DefaultGradientButton(
                text: 'Get in touch with us',
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
