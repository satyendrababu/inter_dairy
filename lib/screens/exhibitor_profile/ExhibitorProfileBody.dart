import 'package:inter_dairy/screens/widgets/TextHeading.dart';
import 'package:inter_dairy/screens/widgets/TextTitle.dart';
import 'package:inter_dairy/screens/widgets/TextWithArrow.dart';
import 'package:inter_dairy/screens/widgets/bullet_text.dart';
import 'package:inter_dairy/utils/size_config.dart';
import 'package:flutter/material.dart';

class ExhibitorProfileBody extends StatelessWidget {

  const ExhibitorProfileBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Positioned.fill(
            child: Image.asset(
              'assets/images/home-bg.png',
              fit: BoxFit.cover,
            )
        ),
        SafeArea(
            child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(height: getProportionateScreenHeight(20)),
                  const TextTitle(text: 'Exhibitor Profile'),

                  SizedBox(height: getProportionateScreenHeight(25)),

                  const SizedBox(width: 10,),
                  const Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      BulletText(text: 'Dairy Farming & Farm Equipment'),
                      SizedBox(height: 10,),
                      BulletText(text: 'Veterinary'),
                      SizedBox(height: 10,),
                      BulletText(text: 'Processing and packaging equipment'),
                      SizedBox(height: 10,),
                      BulletText(text: 'Automation & Data processing'),
                      SizedBox(height: 10,),
                      BulletText(text: 'Ingredients and Additives'),
                      SizedBox(height: 10,),
                      BulletText(text: 'Cold chain management, distribution\nand logistics'),
                      SizedBox(height: 10,),
                      BulletText(text: 'Milk and Milk Products'),
                      SizedBox(height: 10,),
                      BulletText(text: 'Financial assistance institutions'),
                    ],
                  ),
                  SizedBox(height: getProportionateScreenHeight(21)),
                  /*const TextHeading(heading: 'Veterinary'),
                  SizedBox(height: getProportionateScreenHeight(16)),
                  const Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      SizedBox(width: 10,),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          TextWithArrow(text: 'Medical & Biological'),
                          SizedBox(height: 10,),
                          TextWithArrow(text: 'Medicines & Vaccines'),
                          SizedBox(height: 10,),
                          TextWithArrow(text: 'Breeding Technology & Equipment'),
                          SizedBox(height: 10,),
                          TextWithArrow(text: 'Semen Storage'),
                        ],
                      )
                    ],
                  )*/

                ],
              ),
            ))
      ],
    );
  }


}