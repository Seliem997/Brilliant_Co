
import 'package:brilliant/shared/components/components.dart';
import 'package:brilliant/shared/styles/colors.dart';
import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

Column buildItService(BuildContext context,{
  required String serviceName,
  required String serviceImage,
  required String serviceDescription,
  String? serviceInfo,
}) {
  return Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      itServiceImage(context,image: serviceImage,),
      verticalSpace(1.5),
      buildTextHeader(
        text: serviceName,
        fontSize: 17.sp,
        color: kDefaultColor,
      ),
      verticalSpace(2),
      buildTextBody(text: 'Description :',color: kDefaultSecondColor,fontSize: 14.sp),
      verticalSpace(1),
      buildTextBody(
        text: serviceDescription,
        isCenter: false,
      ),
      verticalSpace(1.5),
      serviceInfo!=null?
      buildTextBody(text: 'Information :',color: kDefaultSecondColor,fontSize: 14.sp) : verticalSpace(1),
      serviceInfo!=null?
      verticalSpace(1):verticalSpace(0),
      serviceInfo!=null?
      buildTextBody(
        text: serviceInfo,
        isCenter: false,
      ) : verticalSpace(0),
      verticalSpace(1),
      const Padding(
        padding: EdgeInsets.symmetric(horizontal: 50),
        child: Divider(color: kDefaultLightColor,thickness: 2,),
      ),
    ],
  );
}


Widget itServiceImage(BuildContext context,{required String image}) {
  return Container(
    height: 18.h,
    decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage("assets/images/$image.png"),
          fit: BoxFit.cover,
        ),
        boxShadow: const [
          BoxShadow(
            // color: Colors.amber,
              color: Colors.grey,
              spreadRadius: 1,
              blurRadius: 2,
              offset: Offset(2, 2))
        ],
        // color: Color(0xFFC8DFC3),
        borderRadius: BorderRadius.circular(3.h)),
  );
}
