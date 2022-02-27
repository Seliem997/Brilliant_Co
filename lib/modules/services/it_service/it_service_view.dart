import 'package:brilliant/modules/service_details/service_details.dart';
import 'package:brilliant/modules/services/it_service/widgets.dart';
import 'package:brilliant/modules/services/widgets/widgets.dart';
import 'package:brilliant/shared/components/components.dart';
import 'package:brilliant/shared/components/default_buttons.dart';
import 'package:brilliant/shared/styles/colors.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

class ItServicesView extends StatelessWidget {
  const ItServicesView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    List<String> headLines=[
      'Security Cameras',
      'Point Of Sale',
    ];

    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'iT Services'
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
                text: 'Smart home solutions. Easily expand your Smart Home with Smart devices. Start building your smart home now with a wide set of useful automation.',

              ),
              verticalSpace(2),
              buildTextHeader(text: 'Services :'),
              verticalSpace(2),
              buildItService(
                context,
                serviceName:  headLines[0],
                serviceImage: 'security_cams',
                serviceDescription: 'The world of home security cameras can be a lot, especially if you\'re not familiar with home security in general.',
                serviceInfo: 'Here, we\'re going over the different types of cameras, whether you need one or not, how to install them, and more. If it\'s security camera-related, we\'ve got you covered.',
              ),
              verticalSpace(2),
              buildItService(
                context,
                serviceName:  headLines[1],
                serviceImage: 'pos',
                serviceDescription: 'The world of home security cameras can be a lot, especially if you\'re not familiar with home security in general.',
                serviceInfo: 'Here, we\'re going over the different types of cameras, whether you need one or not, how to install them, and more. If it\'s security camera-related, we\'ve got you covered.',
              ),
              verticalSpace(2),
              Center(
                child: buildTextHeader(
                  text: 'Let’s Talk about your IT Services',
                  fontSize: 13.5.sp,
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
