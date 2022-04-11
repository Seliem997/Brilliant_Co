import 'package:brilliant/shared/components/components.dart';
import 'package:brilliant/shared/styles/colors.dart';
import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';
import 'package:localize_and_translate/localize_and_translate.dart';

import 'on_boarding_item_model.dart';

Widget buildPageViewItem(BuildContext context,OnBoardingItemsModel model) {
  return Column(
    children: [
      verticalSpace(4),
      SizedBox(
        height: 65.h,
        child: Image(
          image: AssetImage(model.image),
        ),
      ),
      Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            model.textTitle.tr(),
            style: TextStyle(
              fontSize: 16.sp,
              fontWeight: FontWeight.bold,
            ),
          ),
          Text(
            model.coloredText.tr(),
            style: TextStyle(
              color: kDefaultColor,
              fontSize: 16.5.sp,
              fontWeight: FontWeight.bold,
            ),
          ),
        ],
      ),
      verticalSpace(1),
      Text(
        model.textBody.tr(),
        style: TextStyle(
          fontSize: 17.sp,
        ),
      ),
    ],
  );
}
