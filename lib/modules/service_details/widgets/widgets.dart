import 'package:brilliant/shared/components/components.dart';
import 'package:brilliant/shared/components/default_buttons.dart';
import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

Column buildContactWay({
  required String textWayName,
  required String imageWay,
  required Color backgroundButton,
  required String textWayValue,
  required String labelName,
  required Widget iconWay,
  required VoidCallback function,
}) {
  return Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      buildTextBody(text: textWayName,fontSize: 17.sp),
      verticalSpace(1.5),
      Row(
        children: [
          Image(
            image: AssetImage("assets/icons/$imageWay.png"),
            height: 5.h,
            width: 10.w,
          ),
          horizontalSpace(3.5),
          buildTextBody(text: textWayValue,fontSize: 16.sp,),
          const Spacer(),
          SizedBox(
            width: 35.w,
            child: defaultButtonWithIcon(
              onPressed: function,
              labelText: labelName,
              icon: iconWay,
              textColor: Colors.white,
              labelSize: 16.sp,
              backgroundButton: backgroundButton,
            ),
          ),


        ],
      ),
    ],
  );
}
