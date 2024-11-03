import 'package:inter_dairy/screens/exhibitor_list/ExhibitorListBody.dart';
import 'package:inter_dairy/screens/widgets/CustomAppBar.dart';
import 'package:inter_dairy/screens/widgets/CustomBottomNavBar.dart';
import 'package:inter_dairy/screens/widgets/CustomDrawer.dart';
import 'package:inter_dairy/utils/enums.dart';
import 'package:flutter/material.dart';

import 'exhibitor_pdf_body.dart';

class ExhibitorListScreen extends StatelessWidget {
  static final String id = "list_screen";
  final String url;
  const ExhibitorListScreen({super.key, required this.url});
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      appBar: CustomAppBar(),

      drawer: const CustomDrawer(),

      body: ExhibitorPdfBody(
        weblink: url,
      ),

      //bottomNavigationBar: CustomBottomNavBar(selectedMenu: MenuState.event),
      bottomNavigationBar: const CustomBottomNavBar(
          selectedMenu: MenuState.exhibition),
    );
  }

}
