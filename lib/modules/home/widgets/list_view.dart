import 'package:brilliant/modules/home/widgets/widgets.dart';
import 'package:brilliant/modules/popular_service_details/popular_service_details.dart';
import 'package:brilliant/modules/services/call_center/call_center_view.dart';
import 'package:brilliant/modules/services/it_service/it_service_view.dart';
import 'package:brilliant/modules/services/marketing/marketing_view.dart';
import 'package:brilliant/modules/services/smart_home/smart_home_view.dart';
import 'package:brilliant/shared/components/components.dart';
import 'package:brilliant/shared/components/navigate.dart';
import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';


List<String> services = [
  'IT Services',
  'Smart Home',
  'Marketing',
  'Call Center',
  // 'Shipping',
];

List<String> servicesImageCat = [
  'technical-support_cat',
  'smart-tv_cat',
  'social-media_cat',
  'call-center_cat',
  // 'Shipping',
];

List<Widget> servicesOnTap = [
  const ItServicesView(),
  const SmartHomeView(),
  const MarketingView(),
  const CallCenterView(),
  // const ShippingView(),
];


List<String> popularImage = [
  'popular1',
  'popular2',
  'popular3',
  'popular4',
];


List<String> popularHeader = [
  'Security Cameras',
  'Marketing',
  'Smart Home',
  'Call Center',
];

List<String> popularBody = [
  'Recommended Service.',
  'Full advertising & Promotion process.',
  'Brilliant is one of the world\'s largest home automation.',
  'comprehensive development of the communication.',
];


List<Widget> popularOnTap = [
  PopularServiceDetails(
    image: 'security_cam_popular',
    serviceName: popularHeader[0],
    serviceInfo: 'popular security cam info',
    serviceDetails: 'popular security cam service details',
  ),
  PopularServiceDetails(
    image: 'marketing_popular',
    serviceName: popularHeader[1],
    serviceInfo: 'popular marketing info',
    serviceDetails: 'popular marketing service details',
  ),
  PopularServiceDetails(
    image: 'smart_home_popular',
    serviceName: popularHeader[2],
    serviceInfo: 'popular smart home info',
    serviceDetails: 'popular smart home service details',
  ),
  PopularServiceDetails(
    image: 'call_center_popular',
    serviceName: popularHeader[3],
    serviceInfo: 'popular call center info',
    serviceDetails: 'popular call center service details',
  ),
];


Widget buildListServicesItems() {
  return SizedBox(
    height: 15.h,
    child: ListView.builder(
      scrollDirection: Axis.horizontal,
      itemCount: services.length,
      itemBuilder: (context, index) {
        return serviceItem(
          context,
          text: services[index],
          assetsImageCat: servicesImageCat[index],
          onTap: () {
            navigateTo(context, servicesOnTap[index]);
          },
        );
      },
    ),
  );
}

Widget buildListPopularItems() {
  return SizedBox(
    height: 43.h,
    child: ListView.builder(
      scrollDirection: Axis.horizontal,
      itemCount: popularImage.length,
      itemBuilder: (context, index) {
        return popularItemsList(
          context,
          index,
          onTap: (){
            navigateTo(context, popularOnTap[index]);
          }
        );
      },
    ),
  );
}

Widget popularItemsList(BuildContext context, index,{required GestureTapCallback onTap}) {
  return GestureDetector(
    onTap: onTap,
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
                'assets/images/${popularImage[index]}.png',
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
            text: popularHeader[index],
            fontSize: 13.5.sp,
          ),
        ),
        verticalSpace(1),
        SizedBox(
          width: 35.w,
          child: buildTextBody(
            text: popularBody[index],
            isCenter: false,
            maxLines: 3,
            isOverflew: true,
          ),
        ),
      ],
    ),
  );
}
