import 'package:brilliant/shared/components/components.dart';
import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

import '../../shared/components/launch_view.dart';
import 'widgets/widgets.dart';

class InformationView extends StatelessWidget {
  const InformationView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: SingleChildScrollView(
        child: Stack(
          alignment: Alignment.center,
          children: [
            Column(
              children: [
                const Image(
                  image: AssetImage('assets/images/brilliant_cover.png'),
                ),
                Padding(
                  padding: const EdgeInsets.all(25.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      verticalSpace(20),
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
                      buildTextHeader(text: 'Our Values ..',fontSize: 18.sp),
                      verticalSpace(.5),
                      buildTextBody(isCenter: false,text: 'You will find us attentive, proactive and highly engaged with our customers. Since digital is a fast-moving technology, we move with our customers into building long-term sustainable relation-ships.',),
                      verticalSpace(2),
                      buildContactWith(context),
                    ],
                  ),
                ),
              ],
            ),
            Positioned(
              top: 15.h,
              child: Column(
                children: [
                  const CircleAvatar(
                    backgroundImage: AssetImage('assets/images/logo_info.png'),
                    radius: 50,
                  ),
                  horizontalSpace(4),
                  buildTextHeader(text: 'Brilliant Co',),
                  InkWell(
                      onTap: (){
                        openMap();
                      },
                      child: buildTextBody(
                        text: '📍 Tanta, Gharbia, EGY',
                        fontSize: 10.sp,
                      ),
                  ),
                  verticalSpace(1),
                  buildFollowUs(context),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }


}

