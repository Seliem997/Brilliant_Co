import 'package:brilliant/shared/components/components.dart';
import 'package:brilliant/shared/styles/colors.dart';
import 'package:flutter/material.dart';

import 'widgets/widgets.dart';

class InformationView extends StatelessWidget {
  const InformationView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  const CircleAvatar(
                    backgroundImage: AssetImage('assets/images/logo_info.png'),
                    radius: 40,
                  ),
                  horizontalSpace(4),
                  buildTextHeader(text: 'Brilliant Co',),
                ],
              ),
              verticalSpace(2),
              buildTextHeader(text: 'About us',color: kDefaultSecondColor),
              verticalSpace(1),
              buildTextBody(text: '   customize and convenient POS system that can be adoptable every industry.\nThe best comprehensive company in Egypt, started as a company specialized in the field of computing and point of sale solutions, we jumped into the professional POS business and has grown since into point of sale, Hardware sales and POS solution supplier.',),
              verticalSpace(1),
              buildTextHeader(text: 'Our Mission',color: kDefaultSecondColor),
              verticalSpace(1.5),
              buildTextBody(text: '   Our Mission is to achieve the reputation of a quality, high standard & reliable solution & service Provider company in the ICT industry.',),
              verticalSpace(1),
              buildTextHeader(text: 'Our Vision',color: kDefaultSecondColor),
              verticalSpace(1.5),
              buildTextBody(text: '   Our Vision is to achieve 100% customer satisfaction by delivering quality products and service at an affordable cost. we are aiming to become an entity in technology based corporate solutions, capable of demanding unconditional response from the targeted niche.',),
              verticalSpace(4),
              buildFollowUs(),
              verticalSpace(2),
              buildContactWith(context),
            ],
          ),
        ),
      ),
    );
  }


}

