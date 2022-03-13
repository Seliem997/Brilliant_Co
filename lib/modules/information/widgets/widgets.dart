import 'package:brilliant/modules/web_view/web_view.dart';
import 'package:brilliant/shared/components/components.dart';
import 'package:brilliant/shared/components/default_buttons.dart';
import 'package:brilliant/shared/components/whatsapp_chat.dart';
import 'package:brilliant/shared/styles/colors.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:localize_and_translate/localize_and_translate.dart';
import 'package:sizer/sizer.dart';
import 'package:url_launcher/url_launcher.dart';

// Text buildTextHeader({required String text, Color? color,double? fontSize}) {
//   return Text(
//     text,
//     style: TextStyle(
//       color: color,
//       fontSize: fontSize ?? 20.sp ,
//       fontWeight: FontWeight.bold,
//       fontFamily: 'requestFont',
//       letterSpacing: 1.0,
//     ),
//   );
// }




Column buildFollowUs() {
  return Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      Text(
        translator.translate('Follow us'),
        style: TextStyle(
          // color: Colors.black,
          fontSize: 18.sp,
        ),
      ),
      verticalSpace(1),
      Row(
        children: [
          IconButton(
            icon: const ImageIcon(
              AssetImage("assets/icons/facebook.png"),
            ),
            iconSize: 36,
            color: const Color(0xFF3B5998),
            splashColor: kDefaultSecondColor,
            onPressed: () {
              Get.to(
                    () => const WebViewScreen(url: 'https://www.facebook.com/1Brilliant.Business/?ref=page_internal',),
                transition: Transition.circularReveal,
              );
            },
          ),
          horizontalSpace(1),
          IconButton(
            icon: const ImageIcon(
              AssetImage("assets/icons/twitter.png"),
            ),
            iconSize: 36,
            color: const Color(0xFF1DA1F2),
            splashColor: kDefaultSecondColor,
            onPressed: () {
              Get.to(
                    () => const WebViewScreen(url: 'https://twitter.com/Brilliant_Tanta',),
                transition: Transition.circularReveal,
              );
            },
          ),
          horizontalSpace(1.5),
          IconButton(
            icon: const ImageIcon(
              AssetImage("assets/icons/linkedin.png"),
            ),
            iconSize: 36,
            color: const Color(0xFF0077b5),
            splashColor: kDefaultSecondColor,
            onPressed: () {
              Get.to(
                    () => const WebViewScreen(url: 'https://www.linkedin.com/company/brilliant7/mycompany/',),
                transition: Transition.circularReveal,
              );
            },
          ),


        ],
      ),
    ],
  );
}

Column buildContactWith(context) {
  return Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      Text(
        translator.translate('Share with Brilliant'),
        style: TextStyle(
          // color: Colors.black,
          fontSize: 17.sp,
        ),
      ),
      verticalSpace(.5),
      Row(
        children: [
          Expanded(
            flex: 1,
            child: defaultButtonWithIcon(
              onPressed: (){
                openWhatsapp(context);
              },
              labelText: translator.translate('Mail us'),
              icon: const Icon(Icons.mail_outline_sharp),
              height: 6.h,
              // radius: 30,
              textColor: Colors.white,
              backgroundButton: Colors.black,
              elevation: 5,

            ),
          ),
          horizontalSpace(3),
          Expanded(
            flex: 1,
            child: defaultButtonWithIcon(
              onPressed: () async{
                launch('tel://+201029994052');
              },
              labelText: translator.translate('Call us'),
              icon: const Icon(Icons.call_outlined),
              // radius: 30,
              textColor: Colors.white,
              backgroundButton: Colors.black,
              height: 6.h,
              elevation: 5,

            ),
          ),
        ],
      ),
      // Padding(
      //   padding: const EdgeInsets.all(12.0),
      //   child: InkWell(
      //     onTap: (){
      //       Get.to(
      //             () => const WebViewScreen(url: 'https://www.google.com/maps/dir/30.7912434,30.9991027/30.7979304,31.0049441/@30.7945348,30.9974102,16z/data=!3m1!4b1!4m4!4m3!1m1!4e1!1m0',),
      //         transition: Transition.zoom,
      //       );
      //     },
      //     child: Text('  📍 Tanta, Gharbia, EGY',
      //       style: TextStyle(
      //         color: kDefaultSecondColor,
      //         fontWeight: FontWeight.w600 ,
      //         fontSize: 14.sp,
      //         // fontFamily: 'cairo',
      //       ),
      //     ),
      //   ),
      // ),

    ],
  );
}