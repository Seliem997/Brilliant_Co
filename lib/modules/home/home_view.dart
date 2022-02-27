import 'package:brilliant/modules/categories/categories.dart';
import 'package:brilliant/modules/home/widgets/list_view.dart';
import 'package:brilliant/shared/components/components.dart';
import 'package:brilliant/shared/components/serach_text_filter.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sizer/sizer.dart';

class HomeView extends StatelessWidget {
  const HomeView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    List<Widget>? items = [
      Container(
        decoration: BoxDecoration(
            image: const DecorationImage(
              image:AssetImage("assets/images/requestService.png"),
              fit: BoxFit.cover,
            ),
            borderRadius: BorderRadius.circular(30)),
      ),
      Container(
        decoration: BoxDecoration(
            image: const DecorationImage(
              image: AssetImage("assets/images/logo_info.png"),
              fit: BoxFit.cover,
            ),
            borderRadius: BorderRadius.circular(30)),
      ),
      Container(
        decoration: BoxDecoration(
            image: const DecorationImage(
              image:AssetImage("assets/images/requestService2.png"),
              fit: BoxFit.cover,
            ),
            borderRadius: BorderRadius.circular(30)),
      ),
    ];

    // var searchController=TextEditingController();

    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            //************************** Brilliant Top Logo *************************
            Container(
              height: 10.h,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(50),
                image: const DecorationImage(
                  image: AssetImage("assets/images/blur_logo.png"),
                  fit: BoxFit.cover,
                ),
              ),
              child: const Image(
                image: AssetImage("assets/images/Brilliant2.png"),
              ),
            ),
            verticalSpace(3),
            // searchTextFilter(controller: searchController, label: 'Search Services'),
            const SearchWithFilter(),
            verticalSpace(2),
            CarouselSlider(
                items: items,
                options: CarouselOptions(
                  height: 22.h,
                  initialPage: 0,
                  viewportFraction: 1,
                  enableInfiniteScroll: true,
                  reverse: false,
                  autoPlay: true,
                  autoPlayInterval: const Duration(seconds: 3),
                  autoPlayAnimationDuration: const Duration(seconds: 1),
                  autoPlayCurve: Curves.fastOutSlowIn,
                  scrollDirection: Axis.horizontal,
                )),
            verticalSpace(3),
            Row(
              children: [
                buildTextHeader(text: 'Services'),
                const Spacer(),
                InkWell(
                  onTap: (){
                    Get.to(
                          () => const CategoriesServices(),
                      transition: Transition.upToDown,
                    );
                  },
                  child: buildTextBody(
                    text: 'See all',
                  ),
                ),
              ],
            ),
            verticalSpace(1),
            buildListServicesItems(),
            buildTextHeader(text: 'Popular'),
            verticalSpace(1),
            buildListPopularItems(),

            // buildRequestServiceList(),
            // const Expanded(
            //   child: TabBarDemo(),
            // ),
          ],
        ),
      ),
    );
  }
}

