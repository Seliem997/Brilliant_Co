import 'package:brilliant/modules/web_view/web_view.dart';
import 'package:brilliant/shared/components/components.dart';
import 'package:brilliant/shared/components/default_buttons.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:localize_and_translate/localize_and_translate.dart';
import 'package:sizer/sizer.dart';
import 'package:url_launcher/url_launcher.dart';

import '../../../shared/components/launch_view.dart';


Row buildFollowUs(context) {
  return Row(
    children: [
      SizedBox(
        width: 10.w,
        child: GestureDetector(
          onTap: (){
            launch('tel://+201029994052');
          },
          child: const Image(image: AssetImage("assets/icons/Phone11.png"),),),
      ),
      horizontalSpace(4),
      SizedBox(
        width: 10.w,
        child: GestureDetector(
          onTap: (){
            openWhatsapp(context);
          },
          child: const Image(image: AssetImage("assets/icons/whatsapp11.png"),),),
      ),
      horizontalSpace(4),
      SizedBox(
        width: 10.w,
        child: InkWell(
          onTap: (){
            Get.to(
              () => const WebViewScreen(url: 'https://www.facebook.com/1Brilliant.Business/?ref=page_internal',),
              transition: Transition.circularReveal,
            );
          },
          child: const Image(image: AssetImage("assets/icons/Facebook11.png"),),),
      ),
      horizontalSpace(4),
      SizedBox(
        width: 10.w,
        child: GestureDetector(
          onTap: (){
            Get.to(
              () => const WebViewScreen(url: 'https://www.linkedin.com/company/brilliant7/mycompany/',),
              transition: Transition.circularReveal,
            );
          },
          child: const Image(image: AssetImage("assets/icons/LinkedIn11.png"),),),
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
                launchEmail();
              },
              labelText: 'Mail us',
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
              labelText: 'Call us',
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

    ],
  );
}