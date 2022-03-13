import 'package:brilliant/shared/components/components.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sizer/sizer.dart';

import '../web_view/web_view.dart';
import 'widgets/widgets.dart';

class InformationView extends StatelessWidget {
  const InformationView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(25.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              verticalSpace(2),
              Row(
                children: [
                  const CircleAvatar(
                    backgroundImage: AssetImage('assets/images/logo_info.png'),
                    radius: 40,
                  ),
                  horizontalSpace(4),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      buildTextHeader(text: 'Brilliant Co',),
                      InkWell(
                          onTap: (){
                            Get.to(
                                  () => const WebViewScreen(url: 'https://www.google.com/maps/dir/30.7912434,30.9991027/30.7979304,31.0049441/@30.7945348,30.9974102,16z/data=!3m1!4b1!4m4!4m3!1m1!4e1!1m0',),
                              transition: Transition.zoom,
                            );
                          },
                          child: buildTextBody(
                            text: '📍 Tanta, Gharbia, EGY'.tr,
                            fontSize: 10.sp,
                          ))
                    ],
                  ),
                ],
              ),
              verticalSpace(4),
              buildTextHeader(text: 'About us ..',fontSize: 18.sp),
              verticalSpace(.5),
              buildTextBody(isCenter: false,text: '   customize and convenient POS system that can be adoptable every industry.The best comprehensive company in Egypt, started as a company specialized in the field of computing and point of sale solutions, we jumped into the professional POS business and has grown since into point of sale, Hardware sales and POS solution supplier.',),
              verticalSpace(4),
              buildTextHeader(text: 'Our Mission ..',fontSize: 18.sp),
              verticalSpace(.5),
              buildTextBody(isCenter: false,text: '   Our Mission is to achieve the reputation of a quality, high standard & reliable solution & service Provider company in the ICT industry.',),
              verticalSpace(4),
              buildTextHeader(text: 'Our Vision ..',fontSize: 18.sp),
              verticalSpace(.5),
              buildTextBody(isCenter: false,text: '   Our Vision is to achieve 100% customer satisfaction by delivering quality products and service at an affordable cost. we are aiming to become an entity in technology based corporate solutions, capable of demanding unconditional response from the targeted niche.',),
              verticalSpace(4),
              buildFollowUs(),
              verticalSpace(2),
              buildContactWith(context),
            ],
          ),
        ),
      ),
    );
  }


}

