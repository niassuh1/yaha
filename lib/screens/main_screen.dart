import 'package:flutter/material.dart';
import 'package:persistent_bottom_nav_bar/persistent-tab-view.dart';

import 'home.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({Key? key}) : super(key: key);

  @override
  _MainScreenState createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  @override
  Widget build(BuildContext context) {
    PersistentTabController _controller =
        PersistentTabController(initialIndex: 0);
    return PersistentTabView(
      context,
      controller: _controller,
      screens: [
        Home(),
        Center(child: Text('Schedule')),
        Center(child: Text('Settings')),
      ],
      navBarStyle: NavBarStyle.style6,
      navBarHeight: 65,
      items: [
        PersistentBottomNavBarItem(
          icon: Icon(Icons.home_rounded),
          activeColorPrimary: Theme.of(context).primaryColor,
          inactiveColorPrimary: Colors.black38,
          title: 'Home',
        ),
        PersistentBottomNavBarItem(
          icon: Icon(Icons.calendar_today),
          activeColorPrimary: Theme.of(context).primaryColor,
          inactiveColorPrimary: Colors.black38,
          title: 'Schedule',
        ),
        PersistentBottomNavBarItem(
          icon: Icon(Icons.settings),
          activeColorPrimary: Theme.of(context).primaryColor,
          inactiveColorPrimary: Colors.black38,
          title: 'Settings',
        ),
      ],
      screenTransitionAnimation: ScreenTransitionAnimation(
        animateTabTransition: true,
        curve: Curves.easeInOut,
        duration: Duration(
          milliseconds: 200,
        ),
      ),
    );
  }
}
