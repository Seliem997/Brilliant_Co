import 'package:brilliant/shared/components/components.dart';
import 'package:brilliant/shared/styles/colors.dart';
import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

import 'on_boarding_item_model.dart';

Widget buildPageViewItem(BuildContext context,OnBoardingItemsModel model) {
  return Column(
    children: [
      verticalSpace(7),
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
            model.textTitle,
            style: const TextStyle(
              fontSize: 22,
              fontWeight: FontWeight.bold,
            ),
          ),
          Text(
            model.coloredText,
            style: const TextStyle(
              color: kDefaultColor,
              fontSize: 22,
              fontWeight: FontWeight.bold,
            ),
          ),
        ],
      ),
      verticalSpace(1),
      Text(
        model.textBody,
        style: const TextStyle(
          fontSize: 22,
        ),
      ),
    ],
  );
}
