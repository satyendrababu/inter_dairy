import 'package:inter_dairy/res/AppContextExtension.dart';
import 'package:inter_dairy/screens/awards/AwardScreen.dart';
import 'package:inter_dairy/screens/contact/ContactScreen.dart';
import 'package:inter_dairy/screens/event_details/EventDetailsScreen.dart';
import 'package:inter_dairy/screens/exhibitor_profile/ExhibitorProfileScreen.dart';
import 'package:inter_dairy/screens/exhibitor_registration/ExhibitorRegistrationScreen.dart';
import 'package:inter_dairy/screens/organising_committee/organising_committee_screen.dart';
import 'package:inter_dairy/screens/widgets/MyTextView.dart';
import 'package:flutter/material.dart';

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
            height: MediaQuery.of(context).size.height,
            width: MediaQuery.of(context).size.width,
            child: Padding(
              padding: const EdgeInsets.all(10.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  const SizedBox(height: 6),
                  Row(
                    children: [
                      Expanded(
                        child: eventDetails(context),
                      ),
                      const SizedBox(width: 10),
                      Expanded(
                        child: organizingCommittee(context),
                      ),
                    ],
                  ),
                  const SizedBox(height: 10), // Add some space at the top
                  Row(
                    children: [
                      Expanded(
                        child: exhibitorRegistration(context),
                      ),
                      const SizedBox(width: 10), // Add spacing between items
                      Expanded(
                        child: visitorRegistration(context),
                      ),
                    ],
                  ),
                  const SizedBox(height: 10), // Add some space at the top
                  Row(
                    children: [
                      Expanded(
                        child: seminar(context),
                      ),
                      const SizedBox(width: 10), // Add spacing between items
                      Expanded(
                        child: awards(context),
                      ),
                    ],
                  ),
                  const SizedBox(height: 10), // Add some space at the top
                  Row(
                    children: [
                      Expanded(
                        child: listOfExhibitors(context),
                      ),
                      const SizedBox(width: 10), // Add spacing between items
                      Expanded(
                        child: contact(context),
                      ),
                    ],
                  ),
                ],
              ),
            ),
           /* child: GridView.count(
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
            ),*/
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
            const SizedBox(height: 24),
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
            const SizedBox(height: 24)
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


            const SizedBox(height: 24),
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
            const SizedBox(height: 24),
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

            const SizedBox(height: 24),
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
            const SizedBox(height: 24),
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
            const SizedBox(height: 24),
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
            const SizedBox(height: 24)
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
            const SizedBox(height: 24),
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
            const SizedBox(height: 24)
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
            const SizedBox(height: 24),
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
            const SizedBox(height: 24)
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
            const SizedBox(height: 24),
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
            const SizedBox(height: 24)
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
            const SizedBox(height: 24),
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
            const SizedBox(height: 24)
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
              const ExhibitorRegistrationScreen(
                  url: 'https://interdairy.in/Exhibitorlist')));


        },
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const SizedBox(height: 24),
            Container(
                height: 50,
                width: 50,
                child: Image.asset('assets/icons/nomination.png')
            ),
            const SizedBox(height: 10),
            MyTextView(
                'List of Exhibitors',
                context.resources.color.colorBlack,
                context.resources.dimension.smallText
            ),
            const SizedBox(height: 24)
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
            const SizedBox(height: 24),


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
            const SizedBox(height: 24)
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