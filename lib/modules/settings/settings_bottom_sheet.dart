
import 'package:brilliant/shared/styles/colors.dart';
import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

Future<dynamic> settingsBottomSheet(context){
  return showModalBottomSheet(
    backgroundColor: Colors.transparent,
    context: context,
    builder: (context){
      return Container(
        height: 40.h,
        decoration: const BoxDecoration(
          color: kLightGreyColor,
          borderRadius: BorderRadius.vertical(top: Radius.circular(50)),
        ),
        child: Padding(
          padding: EdgeInsets.all(5.w),
          // child: Column(
          //   crossAxisAlignment: CrossAxisAlignment.start,
          //   children: [
          //
          //   ],
          // ),
        ),
      );
      },
  );
}