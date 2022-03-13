import 'package:brilliant/modules/service_details/widgets/widgets.dart';
import 'package:brilliant/shared/components/components.dart';
import 'package:brilliant/shared/components/default_buttons.dart';
import 'package:brilliant/shared/styles/colors.dart';
import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

class ServiceDetails extends StatelessWidget {
  const ServiceDetails({Key? key, required this.image, required this.serviceName, required this.serviceInfo, required this.serviceDetails}) : super(key: key);

  final String image;
  final String serviceName;
  final String serviceInfo;
  final String serviceDetails;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Stack(
              children: [
                imageServiceItem(context: context,imageDetails: image),
                defaultBackButton(context),
              ],
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 7.w),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  verticalSpace(1),
                  buildTextHeader(text: serviceName, ),
                  verticalSpace(2),
                  buildTextBody(text:serviceInfo,),
                  verticalSpace(3),
                  buildTextHeader(text: 'Services',color: kDefaultSecondColor,isBold: false),
                  verticalSpace(2),
                  buildTextBody(text: serviceDetails),
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
