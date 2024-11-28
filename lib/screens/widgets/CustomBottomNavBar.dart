import 'package:inter_dairy/screens/contact/ContactScreen.dart';
import 'package:inter_dairy/screens/event_details/EventDetailsScreen.dart';
import 'package:inter_dairy/screens/exhibitor_list/ExhibitorListScreen.dart';
import 'package:inter_dairy/screens/venue/VenueScreen.dart';
import 'package:inter_dairy/screens/widgets/BottomMenuItem.dart';
import 'package:inter_dairy/utils/enums.dart';
import 'package:flutter/material.dart';

import '../exhibitor_registration/ExhibitorRegistrationScreen.dart';
import '../web_pdf_viewer/PdfViewerScreen.dart';

class CustomBottomNavBar extends StatelessWidget {
  const CustomBottomNavBar({
    super.key,
    required this.selectedMenu,
  });

  final MenuState selectedMenu;

  @override
  Widget build(BuildContext context) {
    return Container(
      //height: 95, ///For IOS
      height: 60, ///For Android
      padding: const EdgeInsets.symmetric(vertical: 8),
      decoration: BoxDecoration(
        color: Colors.white,
        boxShadow: [
          BoxShadow(
            offset: const Offset(0, -15),
            blurRadius: 20,
            color: const Color(0xFFDADADA).withOpacity(0.15),
          ),
        ],
      ),
      child: SafeArea(
        top: false,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            GestureDetector(
              child: MenuState.home == selectedMenu
                  ? BottomMenuItem(
                      iconPath: 'assets/icons/home.png', label: 'Home', textColor: const Color(0xff272974))
                  : BottomMenuItem(
                      iconPath: 'assets/icons/home.png', label: 'Home', textColor: const Color(0xff272974)),
              onTap: () {
                Navigator.pop(context);
              },
            ),

            GestureDetector(
              child: MenuState.event == selectedMenu
                  ? BottomMenuItem(
                  iconPath: 'assets/icons/event_details.png', label: 'Ex. Details', textColor: const Color(0xff272974))
                  : BottomMenuItem(
                  iconPath: 'assets/icons/event_details.png', label: 'Ex. Details', textColor: const Color(0xff272974)),
              onTap: () {
                Navigator.pushReplacement(context,
                    MaterialPageRoute(builder: (context) => const EventDetailsScreen()));
              },
            ),
            GestureDetector(
              child: MenuState.exhibition == selectedMenu
                  ? BottomMenuItem(
                  iconPath: 'assets/icons/visitor_registration.png', label: 'Vi. Regi.', textColor: const Color(0xff272974))
                  : BottomMenuItem(
                  iconPath: 'assets/icons/visitor_registration.png', label: 'Vi. Regi.', textColor: const Color(0xff272974)),
              onTap: () {

                Navigator.push(context,
                    MaterialPageRoute(builder: (context) =>
                    const ExhibitorRegistrationScreen(
                        url: 'https://interdairy.in/Visitor-Registration')));
              },
            ),
            GestureDetector(
              child: MenuState.venue == selectedMenu
                  ? BottomMenuItem(
                  iconPath: 'assets/icons/seminar.png', label: 'Seminar', textColor: const Color(0xff272974))
                  : BottomMenuItem(
                  iconPath: 'assets/icons/seminar.png', label: 'Seminar', textColor: const Color(0xff272974)),
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) =>
                    const ExhibitorRegistrationScreen(
                        url: 'https://interdairy.in/seminar')));
              },
            ),
            GestureDetector(
              child: MenuState.contact == selectedMenu
                  ? BottomMenuItem(
                  iconPath: 'assets/icons/contact_old.png', label: 'Contact', textColor: const Color(0xff272974))
                  : BottomMenuItem(
                  iconPath: 'assets/icons/contact_old.png', label: 'Contact', textColor: const Color(0xff272974)),
              onTap: () {
                Navigator.pushReplacement(context,
                    MaterialPageRoute(builder: (context) => const ContactScreen()));
              },
            ),
          ],
        ),
      ),
    );
  }
}
