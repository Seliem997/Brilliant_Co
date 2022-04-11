import 'package:brilliant/shared/styles/colors.dart';
import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';
import 'package:localize_and_translate/localize_and_translate.dart';

class DefaultGradientButton extends StatelessWidget {
   const DefaultGradientButton({Key? key,
     required this.text,
     required this.function,
     this.boxShadow,
   }) : super(key: key);


  final String text;
  final VoidCallback function;
  final List<BoxShadow>? boxShadow;

  @override
  Widget build(BuildContext context) {
    return Container(
      height:  7.h,
      width: double.infinity,
      decoration: BoxDecoration(
        gradient: kGradientBlue,
        borderRadius: BorderRadius.circular(30),
        boxShadow:boxShadow,
      ),
      child: MaterialButton(
        onPressed: function,
        child: Text(
          text.tr(),
          style: const TextStyle(
            fontSize: 20,
            color: Colors.white,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    );
  }
}


Widget defaultButton({
  double width = double.infinity,
  double? height,
  double? textSize,
  double radius = 5,
  Color backgroundButton = kDefaultColor,
  Color? buttonTextColor,
  bool isUpperCase = true,
  required VoidCallback function,
  required String textData,
}) {
  return Container(
    height: height,
    width: width,
    child: MaterialButton(
      onPressed: function,
      child: Text(
        isUpperCase ? textData.toUpperCase().tr() : textData.tr(),
        style: TextStyle(
          fontSize: textSize ?? 16.sp,
          color: buttonTextColor ?? Colors.white,
          fontWeight: FontWeight.w400,
          letterSpacing: 1,
        ),
      ),
    ),
    decoration: BoxDecoration(
      color: backgroundButton,
      borderRadius: BorderRadius.circular(radius),
    ),
  );
}


Widget defaultButtonWithIcon({
  double width = double.infinity,
  double? height,
  double elevation = 5,
  Color? textColor ,
  double? labelSize ,
  Color? backgroundButton ,
  bool isUpperCase = false,
  required VoidCallback onPressed,
  required String labelText,
  required Widget icon,
}) {
  return SizedBox(
    height: height ?? 40,
    width: width,
    child: ElevatedButton.icon(
      onPressed: onPressed,
      label:  Text(isUpperCase ? labelText.tr().toUpperCase() : labelText.tr()),
      icon: icon,
      style: ElevatedButton.styleFrom(
        primary: backgroundButton ?? kDefaultColor,
        onPrimary: textColor ?? kDefaultSecondColor,
        shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(50),
        ),
        padding: EdgeInsets.symmetric(horizontal: 2.w),
        textStyle: TextStyle(
          fontWeight: FontWeight.bold,
          fontSize: labelSize ?? 20,
        )
      ),
    ),
  );
}

Widget defaultBackButton(context){
  return SafeArea(
    child: Container(
      width: 10.w,
      height: 6.h,
      margin: EdgeInsets.all(5.w),
      decoration: BoxDecoration(
        color: kLightGreyColor,
        borderRadius: BorderRadius.circular(15),
      ),
      child: translator.activeLanguageCode == 'ar' ? Directionality(
        textDirection: TextDirection.ltr,
        child: IconButton(
          icon: const Icon(Icons.arrow_forward_ios_sharp),
          color: kDefaultColor,
          padding: EdgeInsets.zero,
          onPressed: () {
            Navigator.pop(context);
          },
        ),
      ) : IconButton(
        icon: const Icon(Icons.arrow_back_ios_new_sharp),
        color: kDefaultColor,
        padding: EdgeInsets.zero,
        onPressed: () {
          Navigator.pop(context);
        },
      )
    ),
  );
}
