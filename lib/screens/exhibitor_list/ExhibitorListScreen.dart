import 'package:inter_dairy/screens/exhibitor_list/ExhibitorListBody.dart';
import 'package:inter_dairy/screens/widgets/CustomAppBar.dart';
import 'package:inter_dairy/screens/widgets/CustomBottomNavBar.dart';
import 'package:inter_dairy/screens/widgets/CustomDrawer.dart';
import 'package:inter_dairy/utils/enums.dart';
import 'package:flutter/material.dart';

class ExhibitorListScreen extends StatelessWidget {
  static final String id = "list_screen";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      /*appBar: AppBar(
        leading: Builder(
          builder: (BuildContext buildContext) {
            return IconButton(
              icon: Image.asset(
                'assets/icons/menu-icon.png', // Your custom drawer icon path
                height: 24, // Adjust the height as needed
              ),
              onPressed: () {
                Scaffold.of(buildContext).openDrawer(); // Open the drawer
              },
            );
          },
        ),
        title: const Center(
          child: Column(
            children: [

              SizedBox(height: 60,)
            ],
          ),
        ),
        actions: [
          GestureDetector(
            child: Row(
              children: [
                Image.asset(
                  'assets/icons/back.png',
                  height: 18,
                ),
                const SizedBox(width: 2,),
                const Text(
                  'Back',
                  style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.bold
                  ),
                ),
                const SizedBox(width: 8,),
              ],
            ),
            onTap: () {
              Navigator.pop(context);
            },
          )
        ],
      ),*/
      appBar: CustomAppBar(),

      drawer: const CustomDrawer(),

      body: ExhibitorListBody(),

      //bottomNavigationBar: CustomBottomNavBar(selectedMenu: MenuState.event),
      bottomNavigationBar: CustomBottomNavBar(
          selectedMenu: MenuState.exhibition),
    );
  }

}
