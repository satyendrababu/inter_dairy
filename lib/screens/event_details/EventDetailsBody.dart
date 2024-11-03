import 'package:inter_dairy/screens/widgets/MyTextView.dart';
import 'package:inter_dairy/screens/widgets/TextHeading.dart';
import 'package:inter_dairy/screens/widgets/TextTitle.dart';
import 'package:flutter/material.dart';

import '../venue/MapWidget.dart';
import '../widgets/bullet_text.dart';

class EventDetailsBody extends StatelessWidget {
  const EventDetailsBody({super.key});

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
            child: SingleChildScrollView(
              child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(height: 20),
                    const TextTitle(text: 'Exhibition Details'),
                    SizedBox(height: 20),
                    const TextHeading(heading: 'International exhibition for complete value chain of dairy industry'),
                    SizedBox(height: 25),
                    const TextHeading(heading: '''Bombay Exhibition Center, Mumbai 05-06-07 December 2024 10:00 am to 6:00 pm'''),
                    SizedBox(height: 25),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        MyTextView(
                            'Organiser',
                            Colors.white,
                            24
                        ),
                        const SizedBox(width: 20),
                        SizedBox(
                            height: 50,
                            width: 200,
                            child: Image.asset('assets/images/va.png')
                        )
                      ],
                    ),
                    SizedBox(height: 25),
                    const TextTitle(text: 'Exhibitor profile'),
                    SizedBox(height: 25),
                    const Padding(
                      padding: EdgeInsets.only(left: 16.0),
                      child: Column(
                        children: [
                          BulletText(text: 'Dairy Farming & Farm Equipment'),
                          SizedBox(height: 10),
                          BulletText(text: 'Veterinary'),
                          SizedBox(height: 10),
                          BulletText(text: 'Processing and packaging equipment'),
                          SizedBox(height: 10),
                          BulletText(text: 'Automation & Data processing'),
                          SizedBox(height: 10),
                          BulletText(text: 'Ingredients and Additives'),
                          SizedBox(height: 10),
                          BulletText(text: 'Cold chain management, distribution and logistics'),
                          SizedBox(height: 10),
                          BulletText(text: 'Milk and Milk Products'),
                          SizedBox(height: 10),
                          BulletText(text: 'Financial assistance institutions'),
                        ],
                      ),

                    ),
                    SizedBox(height: 25),
                    const TextTitle(text: 'Visitor profile'),
                    SizedBox(height: 25),
                    const Padding(
                      padding: EdgeInsets.only(left: 16.0),
                      child: Column(
                        children: [
                          BulletText(text: 'All the stakeholders of the dairy industry are invited to visit Inter Dairy 2024.'),
                        ],
                      ),

                    ),
                    SizedBox(height: 25),

                    /*const TextHeading(heading: 'Get Direction'),
                    SizedBox(height: getProportionateScreenHeight(25)),
                    const MapWidget(),
                    SizedBox(height: getProportionateScreenHeight(25)),*/

              
                  ],
                ),
              ),
            ))
      ],
    );
  }

  
}