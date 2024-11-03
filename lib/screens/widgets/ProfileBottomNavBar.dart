import 'package:inter_dairy/screens/contact/ContactScreen.dart';
import 'package:inter_dairy/screens/event_details/EventDetailsScreen.dart';
import 'package:inter_dairy/screens/exhibitor_list/ExhibitorListScreen.dart';
import 'package:inter_dairy/screens/exhibitor_profile/ExhibitorProfileScreen.dart';
import 'package:inter_dairy/screens/widgets/BottomMenuItem.dart';
import 'package:inter_dairy/utils/enums.dart';
import 'package:flutter/material.dart';

class ProfileBottomNavBar extends StatelessWidget {
  const ProfileBottomNavBar({
    Key? key,
    required this.selectedMenu,
  }) : super(key: key);

  final MenuState selectedMenu;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 60,
      padding: EdgeInsets.symmetric(vertical: 8),
      decoration: BoxDecoration(
        color: Colors.white,
        boxShadow: [
          BoxShadow(
            offset: Offset(0, -15),
            blurRadius: 20,
            color: Color(0xFFDADADA).withOpacity(0.15),
          ),
        ],
      ),
      child: SafeArea(
        top: false,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            GestureDetector(
              child: MenuState.home == selectedMenu
                  ? BottomMenuItem(
                      iconPath: 'assets/images/home_on.png', label: 'Home', textColor: const Color(0xff272974))
                  : BottomMenuItem(
                      iconPath: 'assets/images/home_off.png', label: 'Home', textColor: Colors.grey),
              onTap: () {
                Navigator.pop(context);
              },
            ),

            GestureDetector(
              child: MenuState.profile == selectedMenu
                  ? BottomMenuItem(
                  iconPath: 'assets/images/connect_on.png', label: 'Connect', textColor: const Color(0xff272974))
                  : BottomMenuItem(
                  iconPath: 'assets/images/connect_off.png', label: 'Connect', textColor: Colors.grey),
              onTap: () {
                Navigator.pushReplacement(context,
                    MaterialPageRoute(builder: (context) => ExhibitorProfileScreen()));
              },
            ),
            GestureDetector(
              child: MenuState.event == selectedMenu
                  ? BottomMenuItem(
                  iconPath: 'assets/images/connect_on.png', label: 'Ev Details', textColor: const Color(0xff272974))
                  : BottomMenuItem(
                  iconPath: 'assets/images/connect_off.png', label: 'Ev Details', textColor: Colors.grey),
              onTap: () {
                Navigator.pushReplacement(context,
                    MaterialPageRoute(builder: (context) => EventDetailsScreen()));
              },
            ),
            GestureDetector(
              child: MenuState.exhibition == selectedMenu
                  ? BottomMenuItem(
                  iconPath: 'assets/images/exhibitor_on.png', label: 'Ex List', textColor: const Color(0xff272974))
                  : BottomMenuItem(
                  iconPath: 'assets/images/exhibitor_off.png', label: 'Ex List', textColor: Colors.grey),
              onTap: () {
                /*Navigator.pushReplacement(context,
                    MaterialPageRoute(builder: (context) => ExhibitorListScreen()));*/
              },
            ),

            GestureDetector(
              child: MenuState.contact == selectedMenu
                  ? BottomMenuItem(
                  iconPath: 'assets/images/contact_on.png', label: 'Me Partners', textColor: const Color(0xff272974))
                  : BottomMenuItem(
                  iconPath: 'assets/images/contact_off.png', label: 'Me Partners', textColor: Colors.grey),
              onTap: () {
                Navigator.pushReplacement(context,
                    MaterialPageRoute(builder: (context) => ContactScreen()));
              },
            ),
          ],
        ),
      ),
    );
  }
}
