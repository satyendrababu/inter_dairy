import 'package:inter_dairy/screens/exhibitor_profile/ExhibitorProfileBody.dart';
import 'package:inter_dairy/screens/widgets/CustomAppBar.dart';
import 'package:inter_dairy/screens/widgets/CustomBottomNavBar.dart';
import 'package:inter_dairy/screens/widgets/CustomDrawer.dart';
import 'package:inter_dairy/screens/widgets/ProfileBottomNavBar.dart';
import 'package:inter_dairy/utils/enums.dart';
import 'package:flutter/material.dart';

class ExhibitorProfileScreen extends StatelessWidget {
  static const String id = "profile_screen";

  const ExhibitorProfileScreen({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      appBar: const CustomAppBar(),

      drawer: const CustomDrawer(),

      body: ExhibitorProfileBody(),

      //bottomNavigationBar: CustomBottomNavBar(selectedMenu: MenuState.event),
      bottomNavigationBar: const CustomBottomNavBar(selectedMenu: MenuState.profile),
    );
  }

}