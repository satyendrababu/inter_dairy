import 'package:inter_dairy/screens/widgets/CustomIcon.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

typedef PageIndexCallback = void Function(int pageIndex);

class BuildBottomNavigationBar extends StatefulWidget {

  final PageIndexCallback onPageIndexChanged;
  const BuildBottomNavigationBar({super.key, required this.onPageIndexChanged});

  @override
  State<BuildBottomNavigationBar> createState() => _BuildBottomNavigationBarState();
}

class _BuildBottomNavigationBarState extends State<BuildBottomNavigationBar> {
  int pageIndex = 0;


  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      items: [
        BottomNavigationBarItem(
            icon: pageIndex == 0
                ? CustomIcon(iconPath: 'assets/images/home_on.png')
                : CustomIcon(iconPath: 'assets/images/home_off.png'),
            label: 'Home'),
        BottomNavigationBarItem(
            icon: pageIndex == 1
                ? CustomIcon(iconPath: 'assets/images/connect_on.png')
                : CustomIcon(iconPath: 'assets/images/connect_off.png'),
            label: 'Ev details'),
        BottomNavigationBarItem(
            icon: pageIndex == 2
                ? CustomIcon(iconPath: 'assets/images/exhibitor_on.png')
                : CustomIcon(iconPath: 'assets/images/exhibitor_off.png'),
            label: 'Ex List'),
        BottomNavigationBarItem(
            icon: pageIndex == 3
                ? CustomIcon(iconPath: 'assets/images/details_on.png')
                : CustomIcon(iconPath: 'assets/images/details_off.png'),
            label: 'Venue'),
        BottomNavigationBarItem(
            icon: pageIndex == 4
                ? CustomIcon(iconPath: 'assets/images/contact_on.png')
                : CustomIcon(iconPath: 'assets/images/contact_off.png'),
            label: 'Contact')
      ],
      currentIndex: pageIndex,
      onTap: _onItemTapped,
      type: BottomNavigationBarType.fixed,
    );
  }

  void _onItemTapped(int index) {
    setState(() {
      pageIndex = index;
    });
    widget.onPageIndexChanged(pageIndex);
  }
}
