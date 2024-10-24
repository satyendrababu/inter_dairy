import 'package:inter_dairy/screens/venue/VenueBody.dart';
import 'package:inter_dairy/screens/widgets/CustomAppBar.dart';
import 'package:inter_dairy/screens/widgets/CustomBottomNavBar.dart';
import 'package:inter_dairy/screens/widgets/CustomDrawer.dart';
import 'package:inter_dairy/utils/enums.dart';
import 'package:flutter/material.dart';

class VenueScreen extends StatelessWidget {
  static const String id = "venue_screen";

  const VenueScreen({super.key});
  @override
  Widget build(BuildContext context) {
    return const Scaffold(

      appBar: CustomAppBar(),

      drawer: CustomDrawer(),

      body: VenueBody(),

      //bottomNavigationBar: CustomBottomNavBar(selectedMenu: MenuState.event),
      bottomNavigationBar: CustomBottomNavBar(
          selectedMenu: MenuState.venue),
    );
  }

}