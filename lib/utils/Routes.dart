
import 'package:inter_dairy/screens/conference/ConferenceScreen.dart';
import 'package:inter_dairy/screens/contact/ContactScreen.dart';
import 'package:inter_dairy/screens/details/DetailsScreen.dart';
import 'package:inter_dairy/screens/event_details/EventDetailsScreen.dart';
import 'package:inter_dairy/screens/exhibitor_list/ExhibitorListScreen.dart';
import 'package:inter_dairy/screens/exhibitor_profile/ExhibitorProfileScreen.dart';
import 'package:inter_dairy/screens/exhibitor_registration/ExhibitorRegistrationScreen.dart';
import 'package:inter_dairy/screens/floor_plan/FloorPlanScreen.dart';
import 'package:inter_dairy/screens/home/HomeScreen.dart';
import 'package:inter_dairy/screens/organising_committee/organising_committee_screen.dart';
import 'package:inter_dairy/screens/splash/SplashScreen.dart';
import 'package:inter_dairy/screens/venue/VenueScreen.dart';
import 'package:flutter/material.dart';

import '../screens/awards/AwardScreen.dart';


final Map<String, WidgetBuilder> routes = {
  SplashScreen.id : (context) => const SplashScreen(),
  HomeScreen.id : (context) => const HomeScreen(),
  DetailsScreen.id : (context) => DetailsScreen(),
  EventDetailsScreen.id : (context) => const EventDetailsScreen(),
  ExhibitorProfileScreen.id : (context) => const ExhibitorProfileScreen(),
  //ExhibitorListScreen.id : (context) => ExhibitorListScreen(),
  ContactScreen.id : (context) => const ContactScreen(),
  FloorPlanScreen.id : (context) => FloorPlanScreen(),
  VenueScreen.id : (context) => const VenueScreen(),
  ConferenceScreen.id : (context) => ConferenceScreen(),
  AwardScreen.id : (context) => const AwardScreen(),
  OrganisingCommitteeScreen.id : (context) => const OrganisingCommitteeScreen(),

};