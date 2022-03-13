import 'package:brilliant/modules/categories/categories.dart';
import 'package:brilliant/modules/home/widgets/list_view.dart';
import 'package:brilliant/modules/home/widgets/widgets.dart';
import 'package:brilliant/shared/components/components.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sizer/sizer.dart';
import 'package:localize_and_translate/localize_and_translate.dart';


class HomeView extends StatelessWidget {
  const HomeView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    List<Widget> itemsCarouselList = [
      buildCarouselSliderItem(assetsImage: 'carousal1'),
      buildCarouselSliderItem(assetsImage: 'carousal2'),
      buildCarouselSliderItem(assetsImage: 'carousal3'),
      buildCarouselSliderItem(assetsImage: 'carousal4'),
    ];

    // var searchController=TextEditingController();

    return Scaffold(
      appBar: AppBar(
        title: Container(
          height: 7.h,
          width: double.infinity,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(50),
            image: const DecorationImage(
              image: AssetImage("assets/images/blur_logo.png",),
              fit: BoxFit.cover,
            ),
          ),
          child: const Image(
            image: AssetImage("assets/images/Brilliant2.png"),
          ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              //************************** Brilliant Top Logo *************************
            /*  verticalSpace(1),
              SafeArea(
                child: Container(
                  height: 7.h,
                  width: double.infinity,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(50),
                    image: const DecorationImage(
                      image: AssetImage("assets/images/blur_logo.png",),
                      fit: BoxFit.cover,
                    ),
                  ),
                  child: const Image(
                    image: AssetImage("assets/images/Brilliant2.png"),
                  ),
                ),
              ),
              verticalSpace(3),*/
              // searchTextFilter(controller: searchController, label: 'Search Services'),
              // const SearchWithFilter(),
              verticalSpace(1),
              CarouselSlider(
                  items: itemsCarouselList,
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
      ),
    );
  }


}

