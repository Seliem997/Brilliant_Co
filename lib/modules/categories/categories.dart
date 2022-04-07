import 'package:brilliant/modules/services/call_center/call_center_view.dart';
import 'package:brilliant/modules/services/it_service/it_service_view.dart';
import 'package:brilliant/modules/services/marketing/marketing_view.dart';
import 'package:brilliant/modules/services/smart_home/smart_home_view.dart';
import 'package:brilliant/shared/components/components.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sizer/sizer.dart';
import 'package:localize_and_translate/localize_and_translate.dart';

class CategoriesServices extends StatelessWidget {
  const CategoriesServices({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: defaultAppBar(context: context, title: 'Categories'),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            buildTextHeader(text: 'Categories',),

            buildCategoriesItem(
              imageName: 'call-center',
              imageCat: 'centerCat',
              textName: 'Call Center',
              onTap: (){
                Get.to(
                      () => const CallCenterView(),
                  transition: Transition.upToDown,
                );
              },
            ),

              buildCategoriesItem(
                textName: 'Smart Home',
                imageName: 'smart',
                imageCat: 'smartCat',
                onTap: (){
                  Get.to(
                        () => const SmartHomeView(),
                    transition: Transition.downToUp,
                  );
                },
              ),

              buildCategoriesItem(
                textName: 'Marketing',
                imageName: 'marketing',
                imageCat: 'marketingCat',
                onTap: (){
                  Get.to(
                        () => const MarketingView(),
                    transition: Transition.leftToRightWithFade,
                  );
                },
             ),

              buildCategoriesItem(
                textName: 'IT Services',
                imageName: 'it',
                imageCat: 'itCat',
                onTap: (){
                  Get.to(
                        () => const ItServicesView(),
                    transition: Transition.fadeIn,
                  );
                },
             ),

          ],
        ),
      ),
    );
  }


}

GestureDetector buildCategoriesItem({required String imageName,required String imageCat,required String textName,required GestureTapCallback onTap}) {
  return GestureDetector(
    onTap: onTap,
    child: Container(
      width: double.infinity,
      height: 18.h,
      padding: EdgeInsets.symmetric(horizontal: 8.w),
      margin: EdgeInsets.symmetric(vertical: .5.h),
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage('assets/images/categories/$imageName.png'),
        ),
        borderRadius: BorderRadius.circular(40),
      ),
      child: Center(
        child: Row(
          children: [
            buildTextHeader(
              text: textName,
              color: Colors.white,
              fontSize: 18.sp,
            ),
            const Spacer(),
            Image(
              image: AssetImage('assets/images/categories/$imageCat.png'),
              height: 18.h,
              width: 30.w,
            ),
          ],
        ),
      ),
    ),
  );
}