// buildTextBody(
// isOverflew: false,
// text: 'We can make ordinary things smart, and do their own tasks remotely.',
// fontSize: 12.sp,
// ),
// verticalSpace(1.5),
// buildTextBody(
// isOverflew: false,
// text: 'Everyone is looking for safety, comfort and control over everything We can use the pieces to do something different.',
// fontSize: 12.sp,
// ),
// verticalSpace(1.5),
// buildTextBody(
// isOverflew: false,
// text: 'Some devices can be installed through which we can control the whole house.',
// fontSize: 12.sp,
// ),
// verticalSpace(1.5),
// buildTextBody(
// isOverflew: false,
// text: 'You can make a script for your daily routine and record it on an application.',
// fontSize: 12.sp,
// ),
import 'package:brilliant/shared/components/components.dart';
import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

Column smartHomeListServices ({required String textHeader, required String textBody}){
  return Column(
    children: [
      Row(
        children: [
          Icon(Icons.check_circle,color: Colors.blue,size: 14.sp),
          horizontalSpace(2),
          buildTextHeader(text: textHeader,fontSize: 16.sp,isBold: false),
        ],
      ),
      verticalSpace(.5),
      buildTextBody(text: textBody,isCenter: false,)
    ],
  );
}