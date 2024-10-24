import 'package:inter_dairy/screens/contact/ContactBody.dart';
import 'package:inter_dairy/screens/widgets/CustomAppBar.dart';
import 'package:inter_dairy/screens/widgets/CustomBottomNavBar.dart';
import 'package:inter_dairy/screens/widgets/CustomDrawer.dart';
import 'package:inter_dairy/utils/enums.dart';
import 'package:flutter/material.dart';

class ContactScreen extends StatelessWidget {
  static const String id = "contact_screen";

  const ContactScreen({super.key});
  @override
  Widget build(BuildContext context) {
    return const Scaffold(

      appBar: CustomAppBar(),

      drawer: CustomDrawer(),

      body: ContactBody(),

      //bottomNavigationBar: CustomBottomNavBar(selectedMenu: MenuState.event),
      bottomNavigationBar: CustomBottomNavBar(
          selectedMenu: MenuState.contact),
    );
  }


}