import 'package:inter_dairy/res/AppContextExtension.dart';
import 'package:inter_dairy/screens/awards/AwardScreen.dart';
import 'package:inter_dairy/screens/conference/ConferenceScreen.dart';
import 'package:inter_dairy/screens/contact/ContactScreen.dart';
import 'package:inter_dairy/screens/details/DetailsScreen.dart';
import 'package:inter_dairy/screens/event_details/EventDetailsScreen.dart';
import 'package:inter_dairy/screens/exhibitor_list/ExhibitorListScreen.dart';
import 'package:inter_dairy/screens/exhibitor_profile/ExhibitorProfileScreen.dart';
import 'package:inter_dairy/screens/exhibitor_registration/ExhibitorRegistrationScreen.dart';
import 'package:inter_dairy/screens/floor_plan/FloorPlanScreen.dart';
import 'package:inter_dairy/screens/organising_committee/organising_committee_screen.dart';
import 'package:inter_dairy/screens/widgets/MyTextView.dart';
import 'package:inter_dairy/utils/size_config.dart';
import 'package:flutter/material.dart';

import '../web_pdf_viewer/PdfViewerScreen.dart';

class HomeBody extends StatelessWidget {
  const HomeBody({super.key});

  @override
  Widget build(BuildContext context) {

    return Stack(
      children: [
        Positioned.fill(
            child: Image.asset(
              'assets/images/home-bg.png',
              fit: BoxFit.cover,
            )
        ),
        SingleChildScrollView(
          child: SizedBox(
            height: SizeConfig.screenHeight,
            width: SizeConfig.screenWidth,
            child: GridView.count(
              crossAxisCount: 2,
              crossAxisSpacing: 16,
              mainAxisSpacing: 16,
              padding: const EdgeInsets.all(16),
              children: [
                eventDetails(context),
                organizingCommittee(context),
                exhibitorRegistration(context),
                visitorRegistration(context),

                seminar(context),
                awards(context),
                listOfExhibitors(context),
                contact(context),

                const SizedBox(height: 20,)
              ],
            ),
          ),
        )
      ],
    );

  }

  Card eventDetails(BuildContext context) {
    return Card(
      //elevation: context.resources.dimension.lightElevation,
      shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(6)
      ),
      color: Colors.white,
      child: InkWell(
        onTap: () {
          Navigator.pushNamed(context, EventDetailsScreen.id);
        },
        splashColor: Colors.grey,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const SizedBox(height: 16),
            SizedBox(
                height: 50,
                width: 50,
                child: Image.asset('assets/icons/event_details.png')
            ),
            const SizedBox(height: 10),
            MyTextView(
                'Exhibition Details',
                context.resources.color.colorBlack,
                context.resources.dimension.smallText
            ),
            const SizedBox(height: 16)
          ],
        ),
      ),
    );
  }


  Card awards(BuildContext context) {
    return Card(
      //elevation: context.resources.dimension.lightElevation,
      shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(6)
      ),
      color: Colors.white,
      child: InkWell(
        onTap: () {
          Navigator.pushNamed(context, AwardScreen.id);
        },
        splashColor: Colors.grey,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [



            SizedBox(
                height: 50,
                width: 50,
                child: Image.asset('assets/icons/awards.png')
            ),
            const SizedBox(height: 10),
            MyTextView(
                'Awards',
                context.resources.color.colorBlack,
                context.resources.dimension.smallText
            ),

          ],
        ),
      ),
    );
  }


  Card nominationForm(BuildContext context) {
    return Card(
      //elevation: context.resources.dimension.lightElevation,
      shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(6)
      ),
      color: Colors.white,
      child: InkWell(
        onTap: () {
          Navigator.push(context,
              MaterialPageRoute(builder: (context) =>
              const ExhibitorRegistrationScreen(
                  url: 'https://interdairy.in/InterDairyAwards.aspx')));
        },
        splashColor: Colors.grey,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [


            SizedBox(
                height: 50,
                width: 50,
                child: Image.asset('assets/icons/nomination.png')
            ),
            const SizedBox(height: 10),
            MyTextView(
                'Nomination Form',
                context.resources.color.colorBlack,
                context.resources.dimension.smallText
            ),

          ],
        ),
      ),
    );
  }

  Card exhibitorProfile(BuildContext context) {
    return Card(
      //elevation: context.resources.dimension.lightElevation,
      shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(6)
      ),
      color: Colors.white,
      child: InkWell(
        onTap: () {
          Navigator.pushNamed(context, ExhibitorProfileScreen.id);
        },
        splashColor: Colors.grey,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const SizedBox(height: 16),
            Container(
                height: 50,
                width: 50,
                child: Image.asset('assets/icons/Exhibit.png')
            ),
            const SizedBox(height: 10),
            MyTextView(
                'Exhibitor Profile',
                context.resources.color.colorBlack,
                context.resources.dimension.smallText
            ),
            const SizedBox(height: 16)
          ],
        ),
      ),
    );
  }

  Card organizingCommittee(BuildContext context) {
    return Card(
      //elevation: context.resources.dimension.lightElevation,
      shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(6)
      ),
      color: Colors.white,
      child: InkWell(
        onTap: () {
          Navigator.pushNamed(context, OrganisingCommitteeScreen.id);
        },
        splashColor: Colors.grey,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const SizedBox(height: 16),
            Container(
                height: 50,
                width: 50,
                child: Image.asset('assets/icons/organising.png')
            ),
            const SizedBox(height: 10),
            MyTextView(
                'Organising Committee',
                context.resources.color.colorBlack,
                context.resources.dimension.smallText
            ),
            const SizedBox(height: 16)
          ],
        ),
      ),
    );
  }

  Card exhibitorRegistration(BuildContext context) {
    return Card(
      //elevation: context.resources.dimension.lightElevation,
      shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(6)
      ),
      color: Colors.white,
      child: InkWell(
        onTap: () {
          Navigator.push(context,
          MaterialPageRoute(builder: (context) =>
              const ExhibitorRegistrationScreen(
                  url: 'https://interdairy.in/exhibitorenquiry')));
        },
        splashColor: Colors.grey,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const SizedBox(height: 16),
            Container(
                height: 50,
                width: 50,
                child: Image.asset('assets/icons/Registration.png')
            ),
            const SizedBox(height: 10),
            MyTextView(
                'Exhibitor Registration',
                context.resources.color.colorBlack,
                context.resources.dimension.smallText
            ),
            const SizedBox(height: 16)
          ],
        ),
      ),
    );
  }

  Card visitorRegistration(BuildContext context) {
    return Card(
      //elevation: context.resources.dimension.lightElevation,
      shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(6)
      ),
      color: Colors.white,
      child: InkWell(
        onTap: () {
          Navigator.push(context,
              MaterialPageRoute(builder: (context) =>
              const ExhibitorRegistrationScreen(
                  url: 'https://interdairy.in/Visitor-Registration')));
        },
        splashColor: Colors.grey,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const SizedBox(height: 16),
            SizedBox(
                height: 50,
                width: 50,
                child: Image.asset('assets/icons/visitor_registration.png')
            ),
            const SizedBox(height: 10),
            MyTextView(
                'Visitor Registration',
                context.resources.color.colorBlack,
                context.resources.dimension.smallText
            ),
            const SizedBox(height: 16)
          ],
        ),
      ),
    );
  }

  Card seminar(BuildContext context) {
    return Card(
      //elevation: context.resources.dimension.lightElevation,
      shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(6)
      ),
      color: Colors.white,
      child: InkWell(
        onTap: () {
          //Navigator.pushNamed(context, ExhibitorListScreen.id);
          Navigator.push(context,
              MaterialPageRoute(builder: (context) =>
              const ExhibitorRegistrationScreen(
                  url: 'https://interdairy.in/seminar')));


        },
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const SizedBox(height: 16),
            Container(
                height: 50,
                width: 50,
                child: Image.asset('assets/icons/seminar.png')
            ),
            const SizedBox(height: 10),
            MyTextView(
                'Seminar',
                context.resources.color.colorBlack,
                context.resources.dimension.smallText
            ),
            const SizedBox(height: 16)
          ],
        ),
      ),
    );
  }

  Card listOfExhibitors(BuildContext context) {
    return Card(
      //elevation: context.resources.dimension.lightElevation,
      shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(6)
      ),
      color: Colors.white,
      child: InkWell(
        onTap: () {
          //Navigator.pushNamed(context, ExhibitorListScreen.id);
          Navigator.push(context,
              MaterialPageRoute(builder: (context) =>
              const PdfViewerScreen(
                  url: 'https://interdairy.in/ID_Exhibitors_list.pdf', title: '')));


        },
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const SizedBox(height: 16),
            Container(
                height: 50,
                width: 50,
                child: Image.asset('assets/icons/nomination.png')
            ),
            const SizedBox(height: 10),
            MyTextView(
                'List of Exhibitor',
                context.resources.color.colorBlack,
                context.resources.dimension.smallText
            ),
            const SizedBox(height: 16)
          ],
        ),
      ),
    );
  }


  Card contact(BuildContext context) {
    return Card(
      //elevation: context.resources.dimension.lightElevation,
      shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(6)
      ),
      color: Colors.white,
      child: InkWell(
        onTap: () {
          Navigator.pushNamed(context, ContactScreen.id);
        },
        splashColor: Colors.grey,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const SizedBox(height: 16),


            Container(
                height: 50,
                width: 50,
                child: Image.asset('assets/icons/contact.png')
            ),
            const SizedBox(height: 10),
            MyTextView(
                'Contact',
                context.resources.color.colorBlack,
                context.resources.dimension.smallText
            ),
            const SizedBox(height: 16)
          ],
        ),
      ),
    );
  }

  /*Card floorPlan(BuildContext context) {
    return Card(
      //elevation: context.resources.dimension.lightElevation,
      shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(6)
      ),
      color: Colors.white,
      child: InkWell(
        onTap: () {
          Navigator.pushNamed(context, FloorPlanScreen.id);
        },
        splashColor: Colors.grey,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const SizedBox(height: 16),


            Container(
                height: 50,
                width: 50,
                child: Image.asset('assets/icons/Floor.png')
            ),
            const SizedBox(height: 10),
            MyTextView(
                'Floor Plan',
                context.resources.color.colorBlack,
                context.resources.dimension.smallText
            ),
            const SizedBox(height: 16)
          ],
        ),
      ),
    );
  }
  Card visit(BuildContext context) {
    return Card(
      //elevation: context.resources.dimension.lightElevation,
      shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(6)
      ),
      color: Colors.white,
      child: InkWell(
        onTap: () {
          Navigator.push(context,
              MaterialPageRoute(builder: (context) =>
              const ExhibitorRegistrationScreen(
                  url: 'https://zestgroupindia.in/forms/dic_2024/public/')));
        },
        splashColor: Colors.grey,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const SizedBox(height: 16),


            Container(
                height: 50,
                width: 50,
                child: Image.asset('assets/icons/visit.png')
            ),
            const SizedBox(height: 10),
            MyTextView(
                'Visit',
                context.resources.color.colorBlack,
                context.resources.dimension.smallText
            ),
            const SizedBox(height: 16)
          ],
        ),
      ),
    );
  }*/
  
}