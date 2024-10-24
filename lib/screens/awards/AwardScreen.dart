
import 'package:inter_dairy/screens/conference/ConferenceBody.dart';
import 'package:inter_dairy/screens/widgets/CustomAppBar.dart';
import 'package:inter_dairy/screens/widgets/CustomBottomNavBar.dart';
import 'package:inter_dairy/screens/widgets/CustomDrawer.dart';
import 'package:inter_dairy/utils/enums.dart';
import 'package:flutter/material.dart';

import 'AwardBody.dart';

class AwardScreen extends StatelessWidget {

  static const String id = "award_screen";

  const AwardScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      appBar: const CustomAppBar(),

      drawer: const CustomDrawer(),

      body: AwardBody(),

      bottomNavigationBar: const CustomBottomNavBar(
          selectedMenu: MenuState.profile),
    );
  }

}