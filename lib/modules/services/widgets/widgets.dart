
import 'package:brilliant/modules/service_details/service_details.dart';
import 'package:brilliant/shared/components/components.dart';
import 'package:brilliant/shared/components/default_buttons.dart';
import 'package:brilliant/shared/styles/colors.dart';
import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';


SizedBox buildServiceProvided({
  required String image,
  required String textHead,
  required String textBody,
  double? width,
  double? widthImage,
  double? height,
  double? heightImage,
}) {
  return SizedBox(
    width: width ?? 29.6.w,
    height: height ?? 29.h,
    child: Column(
      children: [
        Image(
          image: AssetImage('assets/$image.png',),
          height: widthImage ?? 8.h,
          width: heightImage ?? 15.w,
          // fit: BoxFit.cover,
        ),
        verticalSpace(1),
        buildTextHeader(
          text: textHead,
          fontSize: 12.sp,
        ),
        verticalSpace(1),
        buildTextBody(
          text: textBody,
          fontSize: 10.sp,
          maxLines: 8,
          isOverflew: true,
        ),
      ],
    ),
  );
}


Row buildRequestHeaderService(BuildContext context, {
      required String image,
      required String text,
    }) {
  return Row(
    children: [
      Image(
        height: 16.h,
        width: 35.w,
        image: AssetImage('assets/images/$image.png',),
        fit: BoxFit.cover,
      ),
      horizontalSpace(1.5),
      Expanded(
        child: Column(
          children: [
            Text(
              text,
              maxLines: 6,
              overflow: TextOverflow.ellipsis,
            ),
            verticalSpace(1),
            defaultButton(
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
              },
              textData: 'Request',
              width: 40.w,
              height: 5.h,
              isUpperCase: false,
            ),
          ],
        ),
      ),
    ],
  );
}
