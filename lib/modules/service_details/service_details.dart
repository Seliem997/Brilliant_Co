import 'package:brilliant/modules/service_details/widgets/widgets.dart';
import 'package:brilliant/shared/components/components.dart';
import 'package:brilliant/shared/components/default_buttons.dart';
import 'package:brilliant/shared/components/whatsapp_chat.dart';
import 'package:brilliant/shared/styles/colors.dart';
import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';
import 'package:url_launcher/url_launcher.dart';

class ServiceDetails extends StatelessWidget {
  const ServiceDetails({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Stack(
              children: [
                imageServiceItem(context),
                defaultBackButton(context),
              ],
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 7.w),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  buildTextHeader(text: 'Details',color: kDefaultSecondColor),
                  verticalSpace(2),
                  buildTextBody(text:'    The world of home security cameras can be a lot, especially if you\'re not familiar with home security in general.',),
                  verticalSpace(3),
                  buildTextHeader(text: 'Services',color: kDefaultSecondColor),
                  verticalSpace(2),
                  buildTextBody(text:'    Here, we\'re over the different types of cameras, whether you need one or not, how to install them, and more. If it\'s security camera-related, we\'ve got you covered.'),
                  verticalSpace(4),
                  DefaultGradientButton(
                    text: 'Request Service',
                    function: (){
                      showModalBottomSheet(
                          // backgroundColor: Colors.transparent,
                          context: context,
                          builder: (context) {
                            return Container(
                              height: 40.h,
                              decoration: const BoxDecoration(
                                color: kLightGreyColor,
                                // borderRadius: BorderRadius.vertical(top: Radius.circular(50)),
                              ),
                              child: Padding(
                                padding: EdgeInsets.all(5.w),
                                child: buildRequestServiceSheet(context),
                              ),
                            );
                          });
                    },
                    boxShadow: [
                      BoxShadow(
                        color: kDefaultSecondColor.withOpacity(0.5),
                        spreadRadius: 2,
                        blurRadius: 2,
                        offset: const Offset(0, 3),
                      ),
                    ],
                  ),
                  verticalSpace(2),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }


}

Column buildRequestServiceSheet(BuildContext context) {
  return Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      buildTextHeader(text: 'Request Service',fontSize: 18.sp,color: kDefaultBlackColor,),
      verticalSpace(2.5),
      buildContactWay(
        textWayName: 'Whatsapp',
        imageWay: 'whatsapp',
        textWayValue: '01069500944',
        labelName: 'Contact',
        iconWay: const Icon(Icons.send),
        function: () {
          openWhatsapp(context);
        },
        backgroundButton: Colors.green,
      ),
      verticalSpace(2.5),
      buildContactWay(
        textWayName: 'Phone',
        imageWay: 'phone',
        textWayValue: '010 2999 4052',
        labelName: 'Call now',
        iconWay: const Icon(Icons.local_phone_sharp,),
        function: ()async {
          launch('tel://+201029994052');
        },
        backgroundButton: kDefaultColor,
      ),
    ],
  );
}

Widget imageServiceItem(BuildContext context) {
  return Container(
    height: 60.h,
    decoration: const BoxDecoration(
        image: DecorationImage(
          image: AssetImage("assets/images/details.png"),
          fit: BoxFit.fitWidth,
        ),
    ),
  );
}

