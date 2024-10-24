import 'package:inter_dairy/screens/web_pdf_viewer/LocalPdfViewBody.dart';
import 'package:inter_dairy/screens/widgets/CustomAppBar.dart';
import 'package:inter_dairy/screens/widgets/CustomBottomNavBar.dart';
import 'package:inter_dairy/screens/widgets/CustomDrawer.dart';
import 'package:inter_dairy/utils/enums.dart';
import 'package:flutter/material.dart';

class LocalPdfViewScreen extends StatelessWidget {

  final String url;

  const LocalPdfViewScreen({super.key, required this.url});


  @override
  Widget build(BuildContext context) {
    return Scaffold(

      appBar: CustomAppBar(),

      drawer: const CustomDrawer(),

      body: LocalPdfViewBody(),

      bottomNavigationBar: const CustomBottomNavBar(selectedMenu: MenuState.profile),

      floatingActionButton: FloatingActionButton(
        onPressed: () async{

        },
        child: const Icon(Icons.download),
      ),
    );
  }


}