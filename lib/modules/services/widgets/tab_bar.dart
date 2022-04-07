import 'package:brilliant/modules/services/call_center/call_center_view.dart';
import 'package:brilliant/modules/services/it_service/it_service_view.dart';
import 'package:brilliant/modules/services/marketing/marketing_view.dart';
import 'package:brilliant/modules/services/shipping/shipping_view.dart';
import 'package:brilliant/modules/services/smart_home/smart_home_view.dart';
import 'package:brilliant/shared/components/components.dart';
import 'package:brilliant/shared/styles/colors.dart';
import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

class TabBarDemo extends StatefulWidget {
  const TabBarDemo({Key? key}) : super(key: key);

  @override
  State<TabBarDemo> createState() => _TabBarDemoState();
}

class _TabBarDemoState extends State<TabBarDemo> {

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 5,
      child: Column(
        children: [
          verticalSpace(1),
          SizedBox(
            height: 3.5.h,
            child: TabBar(

              isScrollable: true,
              labelColor: Colors.white,
              unselectedLabelColor: Colors.grey,
              indicator: BoxDecoration(
                color: kDefaultColor,
                borderRadius: BorderRadius.circular(400),
              ),
              tabs: const [
                Tab(
                  child: Text(
                    'iT Services',
                    style: TextStyle(
                      fontSize: 20,
                    ),
                  ),
                ),
                Tab(
                  child: Text(
                    'Marketing',
                    style: TextStyle(
                      fontSize: 20,
                    ),
                  ),
                ),
                Tab(
                  child: Text(
                    'Smart Home',
                    style: TextStyle(
                      fontSize: 20,
                    ),
                  ),
                ),
                Tab(
                  child: Text(
                    'Call center',
                    style: TextStyle(
                      fontSize: 20,
                    ),
                  ),
                ),
                Tab(
                  child: Text(
                    'Shipping',
                    style: TextStyle(
                      fontSize: 20,
                    ),
                  ),
                ),
              ],
            ),
          ),
          const Expanded(
            child: SizedBox(
              width: double.maxFinite,
              child: TabBarView(

                children: [
                  ItServicesView(),
                  MarketingView(),
                  SmartHomeView(),
                  CallCenterView(),
                  ShippingView(),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
