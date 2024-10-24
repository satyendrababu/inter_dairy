import 'package:inter_dairy/screens/conference/ConferenceScreen.dart';
import 'package:inter_dairy/screens/contact/ContactScreen.dart';
import 'package:inter_dairy/screens/event_details/EventDetailsScreen.dart';
import 'package:inter_dairy/screens/exhibitor_list/ExhibitorListScreen.dart';
import 'package:inter_dairy/screens/exhibitor_profile/ExhibitorProfileScreen.dart';
import 'package:inter_dairy/screens/exhibitor_registration/ExhibitorRegistrationScreen.dart';
import 'package:inter_dairy/screens/floor_plan/FloorPlanScreen.dart';
import 'package:flutter/material.dart';
import 'package:inter_dairy/screens/home/HomeScreen.dart';

import '../awards/AwardScreen.dart';
import '../web_pdf_viewer/PdfViewerScreen.dart';

class CustomDrawer extends StatelessWidget {
  const CustomDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.bottomLeft,
      child: Container(
        height: MediaQuery.of(context).size.height * 0.8,
        width: MediaQuery.of(context).size.width * 0.6,// Set the desired height
        decoration: const BoxDecoration(
          borderRadius: BorderRadius.only(
            topRight: Radius.circular(0),
            bottomRight: Radius.circular(0),
          ),
          color: Color(0xff1EA0D6),
        ),
        child: ListView(
          padding: EdgeInsets.zero,
          children: <Widget>[
            ListTile(
              title: const Text('Home', style: TextStyle(color: Colors.white)),
              onTap: () {
                Navigator.pop(context);
                Navigator.pushAndRemoveUntil(context,
                    MaterialPageRoute(builder: (context) => HomeScreen()),
                      (Route<dynamic> route) => false);
              },
            ),
            const Divider(
              thickness: 0.5,
                height: 0.5,
                color: Colors.white
            ),
            ListTile(
              title: const Text('Exhibition Details', style: TextStyle(color: Colors.white)),
              onTap: () {
                Navigator.pop(context);
                Navigator.pushNamed(context, EventDetailsScreen.id);
              },
            ),
            /*const Divider(
                thickness: 0.5,
                height: 0.5,
                color: Colors.white
            ),
            ListTile(
              title: const Text('Exhibitor Profile', style: TextStyle(color: Colors.white)),
              onTap: () {
                Navigator.pop(context);
                Navigator.pushNamed(context, ExhibitorProfileScreen.id);

              },
            ),*/
            const Divider(
                thickness: 0.5,
                height: 0.5,
                color: Colors.white
            ),
            ListTile(
              title: const Text('Exhibitor Registration', style: TextStyle(color: Colors.white)),
              onTap: () {
                Navigator.pop(context);

                Navigator.push(context,
                    MaterialPageRoute(builder: (context) =>
                    const ExhibitorRegistrationScreen(
                        url: 'https://interdairy.in/exhibitorenquiry')));

              },
            ),
            const Divider(
                thickness: 0.5,
                height: 0.5,
                color: Colors.white
            ),
            ListTile(
              title: const Text('Visitor Registration', style: TextStyle(color: Colors.white)),
              onTap: () {
                Navigator.pop(context);

                Navigator.push(context,
                    MaterialPageRoute(builder: (context) =>
                    const ExhibitorRegistrationScreen(
                        url: 'https://interdairy.in/Visitor-Registration')));

              },
            ),
            const Divider(
                thickness: 0.5,
                height: 0.5,
                color: Colors.white
            ),
            ListTile(
              title: const Text('Seminar', style: TextStyle(color: Colors.white)),
              onTap: () {
                Navigator.pop(context);
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) =>
                    const ExhibitorRegistrationScreen(
                        url: 'https://interdairy.in/seminar')));
              },
            ),
            const Divider(
                thickness: 0.5,
                height: 0.5,
                color: Colors.white
            ),
            ListTile(
              title: const Text('Awards', style: TextStyle(color: Colors.white)),
              onTap: () {
                Navigator.pop(context);

                Navigator.pushNamed(context, AwardScreen.id);
              },
            ),
            const Divider(
                thickness: 0.5,
                height: 0.5,
                color: Colors.white
            ),
            ListTile(
              title: const Text('List of Exhibitors', style: TextStyle(color: Colors.white)),
              onTap: () {
                Navigator.pop(context);
                //Navigator.pushNamed(context, ExhibitorProfileScreen.id);
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) =>
                    const PdfViewerScreen(
                        url: 'https://interdairy.in/ID_Exhibitors_list.pdf', title: '')));
              },
            ),




            const Divider(
                thickness: 0.5,
                height: 0.5,
                color: Colors.white
            ),


            ListTile(
              title: const Text('Contact', style: TextStyle(color: Colors.white)),
              onTap: () {
                Navigator.pop(context);
                Navigator.pushNamed(context, ContactScreen.id);
              },
            ),
            const Divider(
                thickness: 0.5,
                height: 0.5,
                color: Colors.white
            ),
            // Add more drawer items as needed
          ],
        ),
      ),
    );
  }
}