import 'package:inter_dairy/screens/exhibitor_registration/ExhibitorRegistrationScreen.dart';
import 'package:inter_dairy/screens/web_pdf_viewer/PdfViewerScreen.dart';
import 'package:inter_dairy/screens/widgets/TextTitle.dart';
import 'package:inter_dairy/screens/widgets/bullet_text.dart';

import 'package:url_launcher/url_launcher.dart';
import 'package:flutter/material.dart';

import '../widgets/TextHeading.dart';
import '../widgets/TextWithArrow.dart';
import '../widgets/rounded_button.dart';

class AwardBody extends StatelessWidget {
  const AwardBody({super.key});


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
        SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(height: 20),
                const TextTitle(text: 'Inter Dairy Awards 2024'),
                SizedBox(height:25),
                Card(
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(8)
                  ),
                  color: Colors.white,
                  child: SizedBox(
                    height: 120,
                    width: 200,
                    child: Image.asset('assets/images/logo.png'),
                  ),
          
                ),
                SizedBox(height: 24),
                const TextHeading(heading: 'Celebrating Innovation, excellence & entrepreneurship of dairy Industry'),
                SizedBox(height: 10),
                const Text(
                  '''India's journey from a milk deficient nation to a resolute dairy powerhouse surpassing all boundaries is a testament to its extraordinary growth. This wouldn't have been possible without the adaptation of new technologies right from the milk production to processing & packaging to distribution.

To celebrate innovation & entrepreneurship, the driving force in achieving such a rapid growth, Inter Dairy - International exhibition for the complete dairy value chain in association with Indian Dairy Association announces the launch of Inter Dairy Awards, which shall be announced and celebrated on December 05, 2024 in Mumbai.''',
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 16
                  ),
                ),
                SizedBox(height: 10),
                const TextHeading(heading: 'Award Categories'),
                SizedBox(height: 10),
                const TextWithArrow(text: 'Capacity based categorization'),
                SizedBox(height: 10),
                const Padding(
                  padding: EdgeInsets.only(left: 16.0),
                  child: Column(
                    children: [
                      BulletText(text: 'Below 2 lakh litres per day'),
                      SizedBox(height: 10),
                      BulletText(text: '2 to 5 lakh litres per day'),
                      SizedBox(height: 10),
                      BulletText(text: '5 to 10 lakh litres per day'),
                      SizedBox(height: 10),
                      BulletText(text: 'Above 10 lakh litres per day'),
                      SizedBox(height: 10),
                    ],
                  ),

                ),
                SizedBox(height: 10),
                const TextWithArrow(text: 'Categories'),
                SizedBox(height: 10),
                const Padding(
                  padding: EdgeInsets.only(left: 16.0),
                  child: Column(
                    children: [
                      BulletText(text: 'Below 2 lakh litres per day'),
                      SizedBox(height: 10),
                      BulletText(text: '2 to 5 lakh litres per day'),
                      SizedBox(height: 10),
                      BulletText(text: '5 to 10 lakh litres per day'),
                      SizedBox(height: 10),
                      BulletText(text: 'Above 10 lakh litres per day'),
                      SizedBox(height: 10),
                    ],
                  ),

                ),
                const TextWithArrow(text: '''Best Start‑up: Dairy Products'''),

                SizedBox(height: 10),
                const TextWithArrow(text: '''Best Start‑up: Tech Solutions to \nDairy Industry'''),
                SizedBox(height: 16),
                Padding(
                  padding: const EdgeInsets.only(left: 20, top: 0, right: 20, bottom: 0),
                  child: RoundedButton(
                      "Nomination Form",
                          () {
                        Navigator.push(context,
                            MaterialPageRoute(builder: (context) =>
                            const ExhibitorRegistrationScreen(
                                url: 'https://interdairy.in/InterDairyAwards.aspx')));
                      }
                  ),
                ),
                SizedBox(height: 32),
              ],
            ),
          ),
        )
      ],
    );
  }
}