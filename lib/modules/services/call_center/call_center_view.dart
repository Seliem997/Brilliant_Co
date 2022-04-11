import 'package:brilliant/modules/services/widgets/widgets.dart';
import 'package:brilliant/shared/components/components.dart';
import 'package:brilliant/shared/components/default_buttons.dart';
import 'package:brilliant/shared/styles/colors.dart';
import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';
import 'package:localize_and_translate/localize_and_translate.dart';

class CallCenterView extends StatelessWidget {
  const CallCenterView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Call Center'.tr(),
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              buildRequestHeaderService(
                context,
                image: 'call_center_details',
                text: 'The unified number communication system Now you can do a comprehensive development of the communication system In your organization, whatever its size',
              ),
              buildTextHeader(
                text: 'Services',
                fontSize: 17.sp,
              ),
              buildTextBody(
                isCenter: false,
                text: 'The call center can provide you with many features that interest you, and it also deals with a large number of calls at the same time.',
              ),
              Image(
                image: const AssetImage('assets/images/bannerCallCenter.png'),
                height: 20.h,
              ),
              verticalSpace(2),
              buildTextBody(isCenter: false,
                text: 'Now you can do a comprehensive development of the communication system in your organization, because Its not just a Contact Center. Its a Context Center.',
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
              buildTextHeader(
                  text: 'We Provide you',
                  fontSize: 16.sp,
                  isBold: false
              ),
              verticalSpace(2),
              buildRowWeProvide(text: 'A mobile application that allows receiving and sending calls outside the workplace.',),
              verticalSpace(1),
              buildRowWeProvide(text: 'Detailed reports for calls and employee performance indicators.'),
              verticalSpace(1),
              buildRowWeProvide(text: 'Recorded message and automatic reply (IVR) services.',),
              verticalSpace(1),
              buildRowWeProvide(text: 'Recording and monitoring of calls.'),

              verticalSpace(1),
              buildRowWeProvide(text: 'Automatically distribute calls.'),
              verticalSpace(1),
              buildRowWeProvide(text: 'Control and keep calls outside work hours.'),
              verticalSpace(1),
              buildRowWeProvide(text: 'Connectivity and the ability to receive and transfer calls between branches.'),
              verticalSpace(1),
              buildRowWeProvide(text: 'Possibility to work from outside the company s headquarters.',),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 15.w,vertical: 2.h),
                child: const Divider(color: kDefaultLightColor,thickness: 2,),
              ),
              buildTextHeader(
                text: 'Let’s Talk about your Call Center Strategy',
                fontSize: 13.5.sp,
                isBold: false,
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

  Row buildRowWeProvide({required String text}) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: EdgeInsets.only(top: .55.h),
                  child: const Icon(
                    Icons.check_circle,
                    color: Colors.blue,
                    size: 16,
                  ),
                ),
                horizontalSpace(1),
                Expanded(
                  child: buildTextBody(
                    text: text,
                    isCenter: false,
                  ),
                ),
              ],
            );
  }
}
