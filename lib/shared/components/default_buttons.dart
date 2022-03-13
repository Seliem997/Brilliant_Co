import 'package:brilliant/shared/styles/colors.dart';
import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

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
          text,
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
        isUpperCase ? textData.toUpperCase() : textData,
        style: TextStyle(
          fontSize: textSize ?? 20,
          color: Colors.white,
          // fontWeight: FontWeight.bold,
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
  // double radius = 5,
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
      icon: icon,
      label:  Text(isUpperCase ? labelText.toUpperCase() : labelText),
      style: ElevatedButton.styleFrom(
        primary: backgroundButton ?? kDefaultColor,
        onPrimary: textColor ?? kDefaultSecondColor,
        shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(50),
        ),
        padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 10),
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
      child: IconButton(
        icon: const Icon(Icons.arrow_back_ios_new_sharp),
        color: kDefaultColor,
        padding: EdgeInsets.zero,
        onPressed: () {
          Navigator.pop(context);
        },
      ),
    ),
  );
}