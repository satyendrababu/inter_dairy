import 'package:inter_dairy/screens/exhibitor_registration/ExhibitorRegistrationScreen.dart';
import 'package:inter_dairy/screens/web_pdf_viewer/WebViewFaceBookScreen.dart';
import 'package:inter_dairy/screens/widgets/CardWithIconAndText.dart';
import 'package:inter_dairy/screens/widgets/IconSocialMedia.dart';
import 'package:inter_dairy/screens/widgets/TextHeading.dart';
import 'package:inter_dairy/screens/widgets/TextTitle.dart';
import 'package:flutter/material.dart';

class ContactBody extends StatelessWidget {
  const ContactBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Positioned.fill(
            child: Image.asset(
          'assets/images/home-bg.png',
          fit: BoxFit.cover,
        )),
        SafeArea(
            child: SingleChildScrollView(
              child: Padding(
              padding: const EdgeInsets.all(10.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(height: 20),
                  const TextTitle(text: 'Contact'),
                  SizedBox(height: 16),
                  const TextHeading(heading: 'Exhibition Secretariat:'),
                  const Text(
                    'VA Exhibitions Pvt. Ltd.',
                    style: const TextStyle(
                        color: Colors.white,
                        fontSize: 18,
                        fontWeight: FontWeight.w500
                    ),
                  ),
                  SizedBox(height: 16),
                  /*const CardWithIconAndText(
                      icon: 'assets/icons/home_blue.png',
                      text:
                          'Office No. 406, WestEnd Mall, Road No. 36 \nJubilee Hills, Hyderabad - 500033'),*/
                  const CardWithIconAndText(
                      icon: 'assets/icons/phone.png',
                      text: '+91 9985099009 \n+91 9557328059'),
                  SizedBox(height: 10),
                  const CardWithIconAndText(
                      icon: 'assets/icons/mail.png',
                      text: 'mp@vaexhibitions.com \nvj@vaexhibitions.com'),

                  SizedBox(height: 24),
                  const TextTitle(text: 'Conference Secretariat'),
                  SizedBox(height: 16),
                  const TextHeading(heading: 'Indian Dairy Association West Zone'),
                  SizedBox(height: 16),

                  const CardWithIconAndText(
                      icon: 'assets/icons/phone.png',
                      text: '+91 9820707242 \n+91 9821441218'),
                  SizedBox(height: 10),
                  const CardWithIconAndText(
                      icon: 'assets/icons/mail.png',
                      text: 'secretary@idawz.org'),

                  SizedBox(height: 160),
                  /*const TextHeading(heading: 'Conference Secretariat'),
                  SizedBox(height: getProportionateScreenHeight(16)),
                  const CardWithIconAndText(
                      icon: 'assets/icons/home_blue.png',
                      text:
                          '8-2-293/82/A, Plot No. 270/Q, Road No 10-C, \nJubilee Hills, Hyderabad - 500 033'),
                  SizedBox(height: getProportionateScreenHeight(10)),
                  const CardWithIconAndText(
                      icon: 'assets/icons/mail.png',
                      text:
                          'ida.southzone@gmail.com \ntelanganachapterida@gmail.com'),
                  SizedBox(height: getProportionateScreenHeight(10)),
                  const CardWithIconAndText(
                      icon: 'assets/icons/phone.png',
                      text: '+91 97397 99807 \n+91 91543 63335'),*/
                  SizedBox(height: 25),
                  /*Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const TextHeading(heading: 'Follow Us'),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          GestureDetector(
                              onTap: () {
                                Navigator.push(context,
                                    MaterialPageRoute(builder: (context) =>
                                    const WebViewFacebookScreen(
                                        url: 'https://www.facebook.com/IndianDairyAsso?mibextid=LQQJ4d')));
                              },
                              child: const IconSocialMedia(icon: 'assets/icons/fb.png')),
                          SizedBox(width: getProportionateScreenHeight(10)),
                          GestureDetector(
                              onTap: () {
                                Navigator.push(context,
                                    MaterialPageRoute(builder: (context) =>
                                    const ExhibitorRegistrationScreen(
                                        url: 'https://twitter.com/indiandairyasso?s=11')));
                              },
                              child: const IconSocialMedia(icon: 'assets/icons/x.png')),
                          SizedBox(width: getProportionateScreenHeight(10)),
                          GestureDetector(
                              onTap: () {
                                Navigator.push(context,
                                    MaterialPageRoute(builder: (context) =>
                                    const ExhibitorRegistrationScreen(
                                        url: 'https://www.linkedin.com/company/indiandairyasso/')));
                              },
                              child: const IconSocialMedia(icon: 'assets/icons/in.png')),
                        ],
                      )
                    ],
                  ),
                  SizedBox(height: getProportionateScreenHeight(25)),*/
                ],
              ),
                      ),
            ))
      ],
    );
  }
}
