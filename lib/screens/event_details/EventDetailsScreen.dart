import 'package:inter_dairy/screens/event_details/EventDetailsBody.dart';
import 'package:inter_dairy/screens/widgets/CustomAppBar.dart';
import 'package:inter_dairy/screens/widgets/CustomBottomNavBar.dart';
import 'package:inter_dairy/screens/widgets/CustomDrawer.dart';
import 'package:inter_dairy/utils/enums.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class EventDetailsScreen extends StatelessWidget {
  static const String id = "event_screen";

  const EventDetailsScreen({super.key});

  @override
  Widget build(BuildContext context) {

    return const Scaffold(
      appBar: CustomAppBar(),


      drawer: CustomDrawer(),

      body: EventDetailsBody(),

      //bottomNavigationBar: CustomBottomNavBar(selectedMenu: MenuState.event),
      bottomNavigationBar: CustomBottomNavBar(selectedMenu: MenuState.event),
    );
  }
  
  
}