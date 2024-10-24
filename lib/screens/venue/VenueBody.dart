import 'package:inter_dairy/screens/venue/MapWidget.dart';
import 'package:inter_dairy/screens/widgets/CardWithIconAndText.dart';
import 'package:inter_dairy/screens/widgets/TextTitle.dart';
import 'package:inter_dairy/utils/size_config.dart';
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
        SafeArea(
          child: SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(height: getProportionateScreenHeight(20)),
                  const TextTitle(text: 'Venue'),
                  SizedBox(height: getProportionateScreenHeight(25)),
                  const CardWithIconAndText(
                      icon: 'assets/icons/current_location.png',
                      text: 'Bombay Exhibition Center, Mumbai'
                  ),
                  SizedBox(height: getProportionateScreenHeight(20)),
                  const MapWidget(),
                  const SizedBox(height: 200,)
            
                ],
              ),
            ),
          ),
        )
      ],
    );
  }

}