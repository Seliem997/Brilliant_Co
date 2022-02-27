import 'package:brilliant/layout/cubit/cubit.dart';
import 'package:brilliant/shared/components/default_buttons.dart';
import 'package:brilliant/shared/styles/colors.dart';
import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

class DialogAppearanceOverlay extends StatefulWidget {
  // final String title;
  // final String valueOne;
  // final String valueTwo;
  /*final VoidCallback functionOne;
  final VoidCallback functionTwo;*/


  const DialogAppearanceOverlay(
      {Key? key,
        // required this.title, required this.valueOne, required this.valueTwo,/* required this.functionOne, required this.functionTwo*/
      }) : super(key: key);


  @override
  State<StatefulWidget> createState() => DialogAppearanceOverlayState(/*valueOne: valueOne,title: this.title, valueTwo: valueTwo,*//*functionOne: functionOne,functionTwo: functionTwo*/);
}

class DialogAppearanceOverlayState extends State<DialogAppearanceOverlay>
    with SingleTickerProviderStateMixin {

  late AnimationController controller;
  late Animation<double> scaleAnimation;

  // String title;
  // String valueOne;
  // String valueTwo;
  // /*VoidCallback functionOne;
  // VoidCallback functionTwo;*/

  DialogAppearanceOverlayState(/*{*//*required this.title,required this.valueOne,required this.valueTwo,*//**//*required this.functionOne,required this.functionTwo*//*}*/);

  @override
  void initState() {
    super.initState();

    controller =
        AnimationController(vsync: this, duration: const Duration(milliseconds: 450));
    scaleAnimation =
        CurvedAnimation(parent: controller, curve: Curves.elasticInOut);

    controller.addListener(() {
      setState(() {});
    });

    controller.forward();
  }

  @override
  Widget build(BuildContext context) {
    String appearanceMode= AppCubit.get(context).isDark ? 'Night mode' : 'Light mode' ;
    return Center(
      child: Material(
        color: Colors.transparent,
        child: ScaleTransition(
          scale: scaleAnimation,
          child: buildDialogContainer(
            title: 'You want change to $appearanceMode',
            valueOne: appearanceMode,
            valueTwo: 'Cancel',
          ),
        ),
      ),
    );
  }

  Container buildDialogContainer({required String title,required String valueOne,required String valueTwo,}) {
    return Container(
            margin: const EdgeInsets.all(20.0),
            padding: const EdgeInsets.all(15.0),
            height: 30.h,
            decoration: ShapeDecoration(
                // color: const Color.fromRGBO(41, 167, 77, 10),
                color: kDefaultSecondColor,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(15.0))),
            child: Column(
              children: <Widget>[
                Expanded(
                    child: Padding(
                      padding: const EdgeInsets.only(
                          top: 30.0, left: 20.0, right: 20.0),
                      child: Text(
                        title,
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 18.sp,
                        ),
                      ),
                    )),
                Expanded(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Padding(
                          padding: const EdgeInsets.all(10.0),
                          child: defaultButton(
                            function: (){
                              setState(() {
                                AppCubit.get(context).changeAppMode();
                                Navigator.pop(context);
                              });
                            },
                            textData: valueOne,
                            textSize: 13.sp,
                            width: 37.w,
                            height: 6.h,
                            isUpperCase: false,
                          ),
                        ),
                        Padding(
                            padding: const EdgeInsets.only(
                                left: 20.0, right: 10.0, top: 10.0, bottom: 10.0),
                            child:  ButtonTheme(
                                height: 35.0,
                                minWidth: 110.0,
                                child: defaultButton(
                                  function: (){
                                    Navigator.pop(context);
                                    // functionTwo;
                                  },
                                  textData: valueTwo,
                                  textSize: 12.sp,
                                  width: 30.w,
                                  height: 6.h,
                                  isUpperCase: false,
                                ),
                            ),
                        ),
                      ],
                    ))
              ],
            ));
  }
}