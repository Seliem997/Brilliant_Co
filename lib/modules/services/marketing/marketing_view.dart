import 'package:brilliant/modules/service_details/service_details.dart';
import 'package:brilliant/modules/services/widgets/widgets.dart';
import 'package:brilliant/shared/components/components.dart';
import 'package:brilliant/shared/components/default_buttons.dart';
import 'package:brilliant/shared/components/serach_text_filter.dart';
import 'package:brilliant/shared/styles/colors.dart';
import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

class MarketingView extends StatelessWidget {
  const MarketingView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
            'Marketing'
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // const SearchWithFilter(),
              buildTextHeader(text: 'Marketing',fontSize: 17.sp),
              buildTextBody(text: 'Marketing services'),
              verticalSpace(1),
              Image(
                image: const AssetImage('assets/images/banner_marketing.png'),
                height: 38.h,
                width: double.infinity,
                fit: BoxFit.cover,
              ),
              verticalSpace(2),
              buildTextHeader(text: 'Strategy',fontSize: 18.sp,isBold: false),
              verticalSpace(1),
              Container(
                // color: Color(0xff3A3B3C).withOpacity(.30),
                color: Colors.transparent.withOpacity(.7),
                padding: const EdgeInsets.all(8),
                child: Column(
                  children: [
                    buildServiceProvided(
                      width: double.infinity,
                      height: 30.h,
                      image: 'images/marketing_social_provide',
                      textHead: 'SOCIAL MEDIA MARKETING',
                      textBody: 'Being on social platforms & building an audience interested in your product or service is essential, but the main axis to reach the largest number of customers is by spreading on each platform (Facebook, YouTube, Twitter..etc) with a complete marketing system',
                    ),
                    buildServiceProvided(
                      width: double.infinity,
                      height: 28.h,
                      image: 'images/marketing_promotion_provide',
                      textHead: 'Full Promotion Process',
                      textBody: 'We analyzes your field, starting from collecting customers\' data in terms of interests and behaviors that will benefit your business, organizing many advertising campaigns, and coordinating a complete study of the market and competitors.',
                    ),
                    buildServiceProvided(
                      width: double.infinity,
                      height: 28.h,
                      image: 'images/marketing_digital_provide',
                      textHead: 'Digital Marketing',
                      textBody: 'Digital marketing is your smart gateway to increase your sales, reach your potential customers, and your organization progress with effective marketing methods and well-thought-out strategies.',
                    ),
                  ],
                ),
              ),

              verticalSpace(.5),
              Image(
                image: const AssetImage('assets/images/banner_marketing2.png'),
                height: 23.h,
              ),
              verticalSpace(1.5),
              const Text(
                'We at Brilliant dedicate to provide our clients with service that exceed their expectations, and keep their business on track in achieving each goal with no limitation. With our resources and expertise, we want to be available to our local businesses to help them thrive and achieve their goals at an affordable cost. To ensure your success, we will commit to aid you in every step of the process.',
              ),
              verticalSpace(2),
              const Padding(
                padding: EdgeInsets.symmetric(horizontal: 35),
                child: Divider(color: kDefaultLightColor,thickness: 2,),
              ),
              verticalSpace(2),
              Center(
                child: buildTextHeader(
                  text: 'Let’s Talk about your Digital Marketing Strategy',
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
                text: 'Contact us',
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


