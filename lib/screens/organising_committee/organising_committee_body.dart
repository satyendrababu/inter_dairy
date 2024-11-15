import 'package:flutter/material.dart';
import '../widgets/TextTitle.dart';

class OrganisingCommitteeBody extends StatelessWidget {
  const OrganisingCommitteeBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Positioned.fill(
            child: Image.asset(
          'assets/images/home-bg.png',
          fit: BoxFit.cover,
        )),
        SafeArea(
            child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBox(height: 20),
                const TextTitle(text: 'Organising Committee'),
                const SizedBox(height: 25),
                Container(
                  color: Colors.white,
                  child: ListView(
                    shrinkWrap: true,
                    physics: const NeverScrollableScrollPhysics(),
                    children: [
                      buildSectionTitle('Patrons'),
                      buildMemberItem('Dr. Meenesh Shah', 'Chairman, NDDB', false),
                      buildMemberItem('Dr. RS Sodhi', 'President, IDA', true),

                      buildSectionTitle('Chairman'),
                      buildMemberItem('Dr. JB Prajapati', 'Chairman, IDA (West Zone)', true),

                      buildSectionTitle('Members'),
                      buildMemberItem('Mr. Arun Patil', 'Vice President, IDA', true),
                      buildMemberItem('Dr. JV Parekh', 'Vice Chairman, IDA (WZ)', false),
                      buildMemberItem('Mr. K Shyju', 'Vice Chairman, IDA (WZ)', true),
                      buildMemberItem('Mr. Devendra Shah', 'Chairman, Parag Foods', false),
                      buildMemberItem('Mr. Girish Chitale', 'Director, Chitale Dairy', true),
                      buildMemberItem('Mr. JR Daruwala', 'ZEC Member, IDA (WZ)', false),
                      buildMemberItem('Dr. Prashant Wasnik', 'Dean, Dairy Sci., MAFSU', true),
                      buildMemberItem('Dr. Alok Juneja', 'Vice President, BAIF', false),

                    ],
                  ),
                ),
                const SizedBox(height: 20),
                const TextTitle(text: 'Exhibition Committee'),
                const SizedBox(height: 25),
                Container(
                  color: Colors.white,
                  child: ListView(
                    shrinkWrap: true,
                    physics: const NeverScrollableScrollPhysics(),
                    children: [
                      buildSectionTitle('Chairman'),
                      buildMemberItem('Mr. Amit Vyas', 'MD, Amul Dairy', false),

                      buildSectionTitle('Members'),
                      buildMemberItem('Mr. Rahul Kumar', 'COO, Parag Milk Foods', true),
                      buildMemberItem('Mr. R K Malik', 'ED ,IDMC', false),
                      buildMemberItem('Mr. Pravin Bhambi', 'ED, Dudhsagar Dairy', true),
                      buildMemberItem('Mr. Vikram Chavda', 'Head – Projects. Amul Dairy', false),
                      buildMemberItem('Mr. Abhijit Bhattacharjee', 'Head- Public Relations, NDDB', true),


                    ],
                  ),
                ),
                const SizedBox(height: 25),
              ],
            ),
          ),
        ))
      ],
    );
  }

  Widget buildSectionTitle(String title) {
    return Container(
      width: double.infinity,
      color: const Color(0XFF088BC6),
      padding: const EdgeInsets.all(14),
      child: Text(
        title,
        style: const TextStyle(
          color: Colors.white,
          fontSize: 16,
          fontWeight: FontWeight.w700,
        ),
      ),
    );
  }

  // Member Item Builder
  Widget buildMemberItem(String name, String position, bool isHighlighted) {
    return Container(
      padding: const EdgeInsets.all(14),
      decoration: BoxDecoration(
        border: Border(
          bottom: BorderSide(color: Colors.grey.shade300, width: 1),
        ),
        color: isHighlighted ? const Color(0XFFF2F2F2) : Colors.white
      ),
      child: RichText(
        text: TextSpan(
          children: [
            TextSpan(
              text: '$name, ',
              style: const TextStyle(
                color: Color(0XFF2E8A2E),
                fontWeight: FontWeight.w600,
                fontSize: 16,
              ),
            ),
            TextSpan(
              text: position,
              style: const TextStyle(
                color: Colors.black,
                fontSize: 16,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
