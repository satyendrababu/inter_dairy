
import 'package:inter_dairy/screens/conference/ConferenceBody.dart';
import 'package:inter_dairy/screens/widgets/CustomAppBar.dart';
import 'package:inter_dairy/screens/widgets/CustomBottomNavBar.dart';
import 'package:inter_dairy/screens/widgets/CustomDrawer.dart';
import 'package:inter_dairy/utils/enums.dart';
import 'package:flutter/material.dart';

class ConferenceScreen extends StatelessWidget {
  static final String id = "conference_screen";
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      appBar: CustomAppBar(),

      drawer: const CustomDrawer(),

      body: ConferenceBody(),

      bottomNavigationBar: const CustomBottomNavBar(
          selectedMenu: MenuState.profile),
    );
  }

}