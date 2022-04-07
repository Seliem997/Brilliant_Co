
import 'package:brilliant/shared/components/components.dart';
import 'package:brilliant/shared/components/default_buttons.dart';
import 'package:flutter/material.dart';
import 'package:localize_and_translate/localize_and_translate.dart';
import 'package:sizer/sizer.dart';
import 'dart:math' as math;

Widget serviceItem(BuildContext context, {
  required String text,
  required String assetsImageCat,
  required GestureTapCallback onTap,
}) {
  return GestureDetector(
    onTap: onTap,
    child: Column(
      children: [
        Image(
          image:AssetImage("assets/images/$assetsImageCat.png"),
          fit: BoxFit.none,
          height: 10.h,
        ),
        Container(
          width: 37.w,
          height: 4.5.h,
          margin: EdgeInsetsDirectional.only(end: 4.w,top: 1.h),
          decoration: BoxDecoration(
            color: const Color(0xFFEFA006).withOpacity(0.79),
            borderRadius: BorderRadius.circular(16),
            boxShadow: [
              BoxShadow(
                color: Colors.black.withOpacity(0.20),
                spreadRadius: 1,
                blurRadius: 2,
                offset: const Offset(2, 2),
              ),
            ],
          ),
          child: Center(
            child: buildTextHeader(
              text: text,
              fontSize: 14.sp,
              color: Colors.white,
              isBold: false,
            ),
          ),
        ),
      ],
    ),
  );
}

// Container buildCarouselSliderItem({required String assetsImage,required String text}) {
//   return Container(
//     decoration: BoxDecoration(
//         image: DecorationImage(
//           image:AssetImage("assets/images/$assetsImage.png"),
//           fit: BoxFit.cover,
//         ),
//         borderRadius: BorderRadius.circular(30)),
//     child: Center(child: Padding(
//       padding: EdgeInsetsDirectional.only(start: 3.w),
//       child: buildTextHeader(text: text,),
//     )),
//   );
// }
Container buildCarouselSliderItem({
  required Color color,
  required Color buttonColor,
  required Color buttonTextColor,
  Color? textColor,
  required String imageName,
  required String textHeader,
  required String textBody,
  required VoidCallback onTap,
}) {
  return Container(
    height: 22.h,
    padding: EdgeInsetsDirectional.fromSTEB(4.w, 2.h, 0, 0),
    decoration: BoxDecoration(
      color: color,
      borderRadius: BorderRadius.circular(30),
    ),
    child: Row(
      children: [
        Expanded(
          flex: 5,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              buildTextHeader(
                text: textHeader,
                fontSize: 16.sp,
                color: textColor,
              ),
              verticalSpace(.5),
              buildTextBody(
                text: textBody,
                fontSize: 11.sp,
                maxLines: 3,
                isOverflew: true,
                color: textColor ?? Colors.white,
                isCenter: false,
              ),
              verticalSpace(.8),
              defaultButton(
                function: onTap,
                textData: 'Show Details',
                height: 5.h,
                width: 37.w,
                backgroundButton: buttonColor,
                isUpperCase: false,
                radius: 16,
                textSize: 12.sp,
                buttonTextColor: buttonTextColor,
              ),
            ],
          ),
        ),
       Expanded(
         flex: 3,
         child: Transform(
           alignment: Alignment.center,
           transform: Matrix4.rotationY(translator.activeLanguageCode == 'ar' ? math.pi : 0),
           child: Image(
             image: AssetImage("assets/images/$imageName.png"),
             height: 18.h,
             fit: BoxFit.fill,
           ),
         ),
       ),
      ],
    ),
  );
}