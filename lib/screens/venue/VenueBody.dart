import 'package:inter_dairy/screens/venue/MapWidget.dart';
import 'package:inter_dairy/screens/widgets/CardWithIconAndText.dart';
import 'package:inter_dairy/screens/widgets/TextTitle.dart';
import 'package:flutter/material.dart';

class VenueBody extends StatelessWidget {

  const VenueBody({super.key});

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
        const SafeArea(
          child: SingleChildScrollView(
            child: Padding(
              padding: EdgeInsets.all(16.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(height: 20),
                  TextTitle(text: 'Venue'),
                  SizedBox(height: 25),
                  CardWithIconAndText(
                      icon: 'assets/icons/current_location.png',
                      text: 'Bombay Exhibition Center, Mumbai'
                  ),
                  SizedBox(height: 20),
                  MapWidget(),
                  SizedBox(height: 200,)
            
                ],
              ),
            ),
          ),
        )
      ],
    );
  }

}