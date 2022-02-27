import 'package:brilliant/modules/home/widgets/widgets.dart';
import 'package:brilliant/modules/service_details/service_details.dart';
import 'package:brilliant/modules/services/call_center/call_center_view.dart';
import 'package:brilliant/modules/services/it_service/it_service_view.dart';
import 'package:brilliant/modules/services/marketing/marketing_view.dart';
import 'package:brilliant/modules/services/shipping/shipping_view.dart';
import 'package:brilliant/modules/services/smart_home/smart_home_view.dart';
import 'package:brilliant/shared/components/components.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sizer/sizer.dart';

List<String> popular = [
  'popular1',
  'popular2',
  'popular1',
];

List<String> services = [
  'it Services',
  'Smart Home',
  'Marketing',
  'Call Center',
  'Shipping',
];

List<Widget> servicesOnTap = [
  const ItServicesView(),
  const SmartHomeView(),
  const MarketingView(),
  const CallCenterView(),
  const ShippingView(),
];

Widget buildListServicesItems() {
  return SizedBox(
    height: 7.h,
    child: ListView.builder(
      scrollDirection: Axis.horizontal,
      itemCount: services.length,
      itemBuilder: (context, index) {
        return serviceItem(
          context,
          text: services[index],
          onTap: () {
            Get.to(
              () => servicesOnTap[index],
              transition: Transition.circularReveal,
            );
          },
        );
      },
    ),
  );
}

/*

List<String> services=[
  'Smart Home',
  'it Services',
  'Marketing',
  'Call Center',
  'Call Center',
];

List<Widgets> servicesOnTap=[
  SmartHomeView(),
  SmartHomeView(),
  SmartHomeView(),
  SmartHomeView(),
  SmartHomeView(),

];


Widget buildListServicesItems() {
  return SizedBox(
    height: 7.h,
    child: ListView.builder(
      scrollDirection: Axis.horizontal,
      itemCount: services.length,
      itemBuilder: (context, index) {
        return servicesItemsList(context,index);
      },
    ),
  );
}

Widget servicesItemsList(BuildContext context,int index) {
  return GestureDetector(
    onTap: () {
    },
    child: Container(
      width: 37.w,
      margin: EdgeInsetsDirectional.only(end: 3.w,bottom: 1.h),
      decoration: BoxDecoration(
        color: kDefaultColor.withOpacity(0.7),
        borderRadius: BorderRadius.circular(28),
        boxShadow: [
          BoxShadow(
            color: kDefaultSecondColor.withOpacity(0.25),
            spreadRadius: 1,
            blurRadius: 2,
            offset: const Offset(2, 2),
          ),
        ],
      ),
      child: Center(
        child: buildTextHeader(
            text: services[index],
            fontSize: 16.sp,
            color: Colors.white
        ),
      ),

    ),
  );
}

*/

Widget buildListPopularItems() {
  return SizedBox(
    height: 43.h,
    child: ListView.builder(
      scrollDirection: Axis.horizontal,
      itemCount: 3,
      itemBuilder: (context, index) {
        return popularItemsList(context, index);
      },
    ),
  );
}

Widget popularItemsList(BuildContext context, index) {
  return GestureDetector(
    onTap: () {
      Get.to(
        () => const ServiceDetails(),
        transition: Transition.circularReveal,
      );
    },
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          width: 40.w,
          height: 25.h,
          margin: EdgeInsetsDirectional.only(end: 4.w),
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage(
                'assets/images/${popular[index]}.png',
              ),
              fit: BoxFit.cover,
            ),
            borderRadius: BorderRadius.circular(28),
            boxShadow: const [
              BoxShadow(
                color: Colors.grey,
                spreadRadius: 1,
                blurRadius: 2,
                offset: Offset(2, 2),
              ),
            ],
          ),
        ),
        verticalSpace(2),
        SizedBox(
          width: 41.w,
          child: buildTextHeader(
            text: 'Security Cameras',
            fontSize: 13.sp,
          ),
        ),
        verticalSpace(1),
        SizedBox(
          width: 35.w,
          child: buildTextBody(
            text: 'Recommended services',
            isCenter: false,
          ),
        ),
      ],
    ),
  );
}
