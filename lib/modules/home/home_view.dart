import 'package:brilliant/modules/categories/categories.dart';
import 'package:brilliant/modules/home/widgets/list_view.dart';
import 'package:brilliant/modules/home/widgets/widgets.dart';
import 'package:brilliant/shared/components/components.dart';
import 'package:brilliant/shared/components/navigate.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

import '../services/call_center/call_center_view.dart';
import '../services/marketing/marketing_view.dart';
import '../services/smart_home/smart_home_view.dart';


class HomeView extends StatelessWidget {
  const HomeView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    List<Widget> itemsCarouselList = [

      buildCarouselSliderItem(
        color: const Color(0xFF39A1D9),
        imageName: 'carousal2',
        textHeader: 'Call Center',
        textBody: 'Discover the special packages now, especially for you',
        buttonColor: Colors.white,
        onTap: (){
          navigateTo(context, const CallCenterView());
        },
        buttonTextColor: Colors.black
      ),
      buildCarouselSliderItem(
        color: const Color(0xFFF99E02),
        imageName: 'carousal3',
        textHeader: 'Marketing',
        textBody: 'Gain Business awareness, grow and increase leads with the right digital marketing strategy',
        buttonColor: Colors.white,
        buttonTextColor: Colors.black,
        onTap: (){
          navigateTo(context, const MarketingView());
        },
      ),
      buildCarouselSliderItem(
        color: const Color(0xFF39D9D9),
        imageName: 'carousal4',
        textHeader: 'Smart Home',
        textBody: 'A professional installation at no cost to you to work in the way that best suits your needs.',
        buttonColor: Colors.white,
        buttonTextColor: Colors.black,
        onTap: (){
          navigateTo(context, const SmartHomeView());
        },
      ),

    ];

    return Scaffold(

      body: SafeArea(
        child: Padding(
          padding: EdgeInsetsDirectional.only(start: 3.w,end: 3.w,top: 2.h),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                CarouselSlider(
                    items: itemsCarouselList,
                    options: CarouselOptions(
                      height: 23.h,
                      initialPage: 0,
                      viewportFraction: 1,
                      enableInfiniteScroll: true,
                      reverse: false,
                      autoPlay: true,
                      autoPlayInterval: const Duration(seconds: 3),
                      autoPlayAnimationDuration: const Duration(seconds: 1),
                      autoPlayCurve: Curves.fastOutSlowIn,
                      scrollDirection: Axis.horizontal,
                    ),
                ),
                verticalSpace(1.5),
                Row(
                  children: [
                    buildTextHeader(text: 'Services'),
                    const Spacer(),
                    InkWell(
                      onTap: (){
                        navigateTo(context, const CategoriesServices());
                      },
                      child: buildTextBody(
                        text: 'See all',
                      ),
                    ),
                    // horizontalSpace(2),
                  ],
                ),
                verticalSpace(1),
                buildListServicesItems(),
                buildTextHeader(text: 'Popular'),
                verticalSpace(1),
                buildListPopularItems(),

                // buildRequestServiceList(),
                // const Expanded(
                //   child: TabBarDemo(),
                // ),
              ],
            ),
          ),
        ),
      ),
    );
  }


}

