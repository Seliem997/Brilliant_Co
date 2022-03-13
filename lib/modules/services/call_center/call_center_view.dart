import 'package:brilliant/modules/services/widgets/widgets.dart';
import 'package:brilliant/shared/components/components.dart';
import 'package:brilliant/shared/components/default_buttons.dart';
import 'package:brilliant/shared/styles/colors.dart';
import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

class CallCenterView extends StatelessWidget {
  const CallCenterView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Call Center',
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(20),
          child: Column(
            children: [
              buildRequestHeaderService(
                context,
                image: 'call_center_details',
                text: 'Smart home solutions. Easily expand your Smart Home with Smart devices. Start building your smart home now with a wide set of useful automation.',
              ),
              Align(
                alignment: AlignmentDirectional.topStart,
                child: buildTextHeader(
                  text: 'Services :',
                  fontSize: 17.sp,
                ),
              ),
              Image(
                image: const AssetImage('assets/images/carousal3.png'),
                height: 20.h,
              ),
              buildTextBody(
                maxLines: 3,
                text: 'Now you can do a comprehensive development of the communication system in your organization.',
              ),
              verticalSpace(2),
              Row(
                children: [
                  Expanded(
                    child: buildServiceProvided(
                      image: 'images/call_center_provide',
                      textHead: 'Contacting',
                      textBody: 'Send and receive calls from a computer or through an application on the phone from a unified number',
                    ),
                  ),
                  Expanded(
                    child: buildServiceProvided(
                      image: 'images/call_center_provide2',
                      textHead: 'Connecting',
                      textBody: 'Communicate with employees inside and outside the workplace for free',
                    ),
                  ),

                ],
              ),
              Align(
                alignment: AlignmentDirectional.topStart,
                child: buildTextHeader(
                    text: 'We Provide you',
                    fontSize: 16.sp,
                    isBold: false
                ),
              ),
              verticalSpace(2),
              buildTextBody(
                text: 'We can make ordinary things smart, and do their own tasks remotely.',
              ),
              verticalSpace(1.5),
              buildTextBody(
                text: 'Everyone is looking for safety, comfort and control over everything We can use the pieces to do something different.',
              ),
              verticalSpace(1.5),
              buildTextBody(
                text: 'Some devices can be installed through which we can control the whole house.',
              ),
              verticalSpace(1.5),
              buildTextBody(
                text: 'You can make a script for your daily routine and record it on an application.',
              ),
              const Padding(
                padding: EdgeInsets.symmetric(horizontal: 35),
                child: Divider(color: kDefaultLightColor,thickness: 2,),
              ),
              verticalSpace(2),
              Center(
                child: buildTextHeader(
                  text: 'Let’s Talk about your Call Center Strategy',
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
