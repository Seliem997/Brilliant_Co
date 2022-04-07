import 'package:brilliant/modules/categories/categories.dart';
import 'package:brilliant/modules/home/widgets/list_view.dart';
import 'package:brilliant/modules/home/widgets/widgets.dart';
import 'package:brilliant/shared/components/components.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sizer/sizer.dart';

import '../services/call_center/call_center_view.dart';
import '../services/it_service/it_service_view.dart';
import '../services/marketing/marketing_view.dart';
import '../services/smart_home/smart_home_view.dart';


class HomeView extends StatelessWidget {
  const HomeView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    List<Widget> itemsCarouselList = [
      //
      // buildCategoriesItem(
      //   textName: 'IT Services',
      //   imageName: 'it',
      //   onTap: (){
      //     Get.to(
      //           () => const ItServicesView(),
      //       transition: Transition.upToDown,
      //     );
      //   },
      // ),
      buildCarouselSliderItem(
        color: const Color(0xFF39A1D9),
        imageName: 'carousal2',
        textHeader: 'Call Center',
        textBody: 'Discover the special packages now, especially for you',
        buttonColor: const Color(0xFFF99E02),
        onTap: (){
          Get.to(
                () => const CallCenterView(),
            transition: Transition.rightToLeftWithFade,
          );
        },
        buttonTextColor: Colors.white
      ),
      buildCarouselSliderItem(
        color: const Color(0xFFF99E02),
        imageName: 'carousal3',
        textHeader: 'Marketing',
        textBody: 'Gain Business awareness, grow and increase leads with the right digital marketing strategy',
        buttonColor: Colors.white,
        buttonTextColor: Colors.black,
        onTap: (){
          Get.to(
                () => const MarketingView(),
            transition: Transition.native,
          );
        },
      ),
      buildCarouselSliderItem(
        color: const Color(0xFF39D9D9),
        imageName: 'carousal4',
        textHeader: 'Smart Home',
        textBody: 'A professional installation at no cost to you to work in the way that best suits your needs.',
        textColor: Colors.black,
        buttonColor: Colors.white,
        buttonTextColor: Colors.black,
        onTap: (){
          Get.to(
                () => const SmartHomeView(),
            transition: Transition.zoom,
          );
        },
      ),

    ];

    return Scaffold(
      appBar: AppBar(
        title: Container(
          height: 7.h,
          width: double.infinity,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(50),
            image: const DecorationImage(
              image: AssetImage("assets/images/blur_logo.png",),
              fit: BoxFit.cover,
            ),
          ),
          child: const Image(
            image: AssetImage("assets/images/Brilliant2.png"),
          ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              verticalSpace(1),
              CarouselSlider(
                  items: itemsCarouselList,
                  options: CarouselOptions(
                    height: 22.h,
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
                      Get.to(
                            () => const CategoriesServices(),
                        transition: Transition.upToDown,
                      );
                    },
                    child: buildTextBody(
                      text: 'See all',
                    ),
                  ),
                ],
              ),
              verticalSpace(1),
              buildListServicesItems(),
              verticalSpace(.5),
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
    );
  }


}

