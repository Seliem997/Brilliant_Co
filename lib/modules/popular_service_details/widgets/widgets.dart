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
            height: 4.h,
            fit: BoxFit.fitWidth,
          ),
          const Spacer(),
          buildTextBody(text: textWayValue,fontSize: 14.sp,),
          const Spacer(),
          SizedBox(
            width: 40.w,
            child: Directionality(
              textDirection: TextDirection.rtl,
              child: defaultButtonWithIcon(
                onPressed: function,
                labelText: labelName,
                icon: iconWay,
                textColor: Colors.white,
                labelSize: 16.sp,
                backgroundButton: backgroundButton,
              ),
            ),
          ),


        ],
      ),
    ],
  );
}



Widget imageServiceItem({
  required BuildContext context,
  required String imageDetails,
}) {
  return Container(
    height: 60.h,
    decoration: BoxDecoration(
      image: DecorationImage(
        image: AssetImage("assets/images/$imageDetails.png"),
        // fit: BoxFit.fitWidth,
        fit: BoxFit.cover
      ),
    ),
  );
}

