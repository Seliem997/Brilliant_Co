import 'package:brilliant/layout/app_layout_view.dart';
import 'package:brilliant/modules/on_boarding/widgets/page_view_items.dart';
import 'package:brilliant/shared/components/default_buttons.dart';
import 'package:brilliant/shared/components/navigate.dart';
import 'package:brilliant/shared/network/local/cache_helper.dart';
import 'package:brilliant/shared/styles/colors.dart';
import 'package:flutter/material.dart';
import 'package:localize_and_translate/localize_and_translate.dart';
import 'package:sizer/sizer.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

import 'on_boarding_item_model.dart';

class OnBoardingScreen extends StatefulWidget {
  const OnBoardingScreen({Key? key}) : super(key: key);

  @override
  State<OnBoardingScreen> createState() => _OnBoardingScreenState();
}

class _OnBoardingScreenState extends State<OnBoardingScreen> {

  bool isLast = false;

  void submit(){
    CacheHelper.saveData(key: 'OnBoarding', value: true).then((value) {
      if(value){
        navigateAndFinish(context, const AppLayoutView());
      }
    });

  }

  List<OnBoardingItemsModel> boarding=[
    OnBoardingItemsModel(
        image: 'assets/images/boarding1.png',
        coloredText: 'solutions,',
        textTitle: 'We give you ',
        textBody: 'you get the results.',
    ),
    OnBoardingItemsModel(
        image: 'assets/images/boarding2.png',
        coloredText: 'strategy',
        textTitle: 'The right digital marketing ',
        textBody: 'grow & increase leads.',
    ),
    OnBoardingItemsModel(
        image: 'assets/images/boarding3.png',
        coloredText: 'free',
        textTitle: 'Communicate and Consulting ',
        textBody: 'with Brilliant Company.',
    ),
  ];


  @override
  Widget build(BuildContext context) {
    var boardController=PageController();

    return Stack(
      children: [
        const Image(
          image: AssetImage('assets/images/background.png'),
        ),

        PageView.builder(
          physics: const BouncingScrollPhysics(),
          controller: boardController,
          itemBuilder: (context, index) => buildPageViewItem(context,boarding[index]),
          itemCount: boarding.length,
          onPageChanged: (int index){
            if( index == boarding.length-1){
              setState(() {
                isLast = true;
              });
            }else{
              setState(() {
                isLast = false;
              });
            }
          },
        ),


        Visibility(
          visible: isLast ? false : true ,
          child: Positioned(
            left: 3.w,
            top: 6.h,
            child: GestureDetector(
              onTap: (){
                submit();
              },
              child: Text(
                'SKIP'.tr(),
                style: const TextStyle(
                  fontSize: 22,
                  color: Colors.white,
                  letterSpacing: 1,
                ),
              ),
            ),
          ),
        ),

        Positioned(
          bottom: 15.h,
          left: 40.w,
          child: SmoothPageIndicator(
            controller: boardController,
            count: 3,
            effect: ExpandingDotsEffect(
              activeDotColor: kDefaultColor,
              dotColor: Colors.orange.shade200,
              dotHeight: 10,
              dotWidth: 10,
              expansionFactor: 4,
              spacing: 2.w,
            ),
          ),
        ),

        Positioned(
          bottom: 2.h,
          right: 3.w,
          child: isLast ?
            defaultButton(
              height: 7.h,
                width: 94.w,
                function: (){
                  submit();
                },
                textData: 'Get Started',
              textSize: 20.sp,
              isUpperCase: false,
            ) : FloatingActionButton(
              backgroundColor: kDefaultColor,
              onPressed: (){
                  boardController.nextPage(
                    duration: const Duration(milliseconds: 750),
                    curve: Curves.fastLinearToSlowEaseIn,
                  );
              },
              child: translator.activeLanguageCode == 'ar' ?
                const Directionality(
                  textDirection: TextDirection.rtl,
                  child: Icon(
                    Icons.arrow_forward_ios,
                  ),
                )
              : const Icon(
                Icons.arrow_forward_ios,
                ),
            ),
        ),

      ],
    );
  }
}
