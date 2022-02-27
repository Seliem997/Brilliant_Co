import 'package:brilliant/modules/services/call_center/call_center_view.dart';
import 'package:brilliant/modules/services/it_service/it_service_view.dart';
import 'package:brilliant/modules/services/marketing/marketing_view.dart';
import 'package:brilliant/modules/services/shipping/shipping_view.dart';
import 'package:brilliant/modules/services/smart_home/smart_home_view.dart';
import 'package:brilliant/shared/components/components.dart';
import 'package:brilliant/shared/components/serach_text_filter.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sizer/sizer.dart';

class CategoriesServices extends StatelessWidget {
  const CategoriesServices({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text('categories',),

      ),
      body: SingleChildScrollView(
        physics: const BouncingScrollPhysics(),
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SearchWithFilter(),
              verticalSpace(2),
              buildTextHeader(text: 'Categories',),
              InkWell(
                child: buildCategoriesItem(imageName: 'callcenter',),
                onTap: (){
                  Get.to(
                        () => const CallCenterView(),
                    transition: Transition.upToDown,
                  );
                },
              ),
              InkWell(
                child: buildCategoriesItem(imageName: 'smart',),
                onTap: (){
                  Get.to(
                        () => const SmartHomeView(),
                    transition: Transition.upToDown,
                  );
                },
              ),
              InkWell(
                child: buildCategoriesItem(imageName: 'marketing',),
                onTap: (){
                  Get.to(
                        () => const MarketingView(),
                    transition: Transition.upToDown,
                  );
                },
              ),
              InkWell(
                child: buildCategoriesItem(imageName: 'it',),
                onTap: (){
                  Get.to(
                        () => const ItServicesView(),
                    transition: Transition.upToDown,
                  );
                },
              ),
              InkWell(
                child: buildCategoriesItem(imageName: 'shipping',),
                onTap: (){
                  Get.to(
                        () => const ShippingView(),
                    transition: Transition.upToDown,
                  );
                },
              ),

            ],
          ),
        ),
      ),
    );
  }

  Padding buildCategoriesItem({required String imageName}) {
    return Padding(
            padding: EdgeInsets.symmetric(vertical: 1.h),
            child: Image(
              image: AssetImage('assets/images/categories/$imageName.png'),
            ),
          );
  }
}
