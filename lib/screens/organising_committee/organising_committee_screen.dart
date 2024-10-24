import 'package:flutter/material.dart';
import 'package:inter_dairy/screens/organising_committee/organising_committee_body.dart';

import '../../utils/enums.dart';
import '../event_details/EventDetailsBody.dart';
import '../widgets/CustomAppBar.dart';
import '../widgets/CustomBottomNavBar.dart';
import '../widgets/CustomDrawer.dart';

class OrganisingCommitteeScreen extends StatelessWidget {
  static const String id = "committee_screen";

  const OrganisingCommitteeScreen({super.key});


  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      appBar: CustomAppBar(),


      drawer: CustomDrawer(),

      body: OrganisingCommitteeBody(),

      //bottomNavigationBar: CustomBottomNavBar(selectedMenu: MenuState.event),
      bottomNavigationBar: CustomBottomNavBar(
          selectedMenu: MenuState.event),
    );
  }

}