import 'package:inter_dairy/screens/details/BuildBottomNavigationBar.dart';
import 'package:inter_dairy/screens/widgets/CustomDrawer.dart';
import 'package:flutter/material.dart';

class DetailsScreen extends StatefulWidget {
  static final String id = "details_screen";

  DetailsScreen({super.key});

  @override
  State<DetailsScreen> createState() => _DetailsScreenState();
}

class _DetailsScreenState extends State<DetailsScreen> {
  int currentPageIndex = 0;

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
        title: Center(
          child: Text(
            _getTitle(),
            style: const TextStyle(
                color: Colors.black
            ),
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
          )
        ],
      ),
      drawer: const CustomDrawer(),
      body: _getPage(currentPageIndex),
      bottomNavigationBar: BuildBottomNavigationBar(
        onPageIndexChanged: (index) {
          setState(() {
            currentPageIndex = index;
          });
        },
      ),*/
    );
  }

  Widget _getPage(int index){
    switch (index) {
      case 0:
        return Container();
      case 1:
        return Container();
      case 2:
        return Container();
      case 3:
        return Container();
      default:
        return Container();
    }
  }

  String _getTitle() {
    switch (currentPageIndex) {
      case 0:
        return 'Home';
      case 1:
        return 'Event Details';
      case 2:
        return 'Exhibitor List';
      case 3:
        return 'Venue';
      default:
        return 'Contact'; // Default title
    }
  }
}