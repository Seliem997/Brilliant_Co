
import 'package:brilliant/shared/components/components.dart';
import 'package:brilliant/shared/styles/colors.dart';
import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

Widget serviceItem(BuildContext context, {required String text, required GestureTapCallback onTap}) {
  return GestureDetector(
    onTap: onTap,
    child: Container(
      width: 37.w,
      margin: EdgeInsetsDirectional.only(end: 3.w,bottom: 1.h),
      decoration: BoxDecoration(
        color: kDefaultColor.withOpacity(0.7),
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
            fontSize: 16.sp,
            color: Colors.white,
            isBold: true,
        ),
      ),

    ),
  );
}

