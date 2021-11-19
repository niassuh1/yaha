import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:persistent_bottom_nav_bar/persistent-tab-view.dart';
import 'package:yaha/constants.dart';
import 'package:yaha/screens/home.dart';
import 'package:yaha/screens/login.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  PersistentTabController _controller =
      PersistentTabController(initialIndex: 0);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        fontFamily: 'Poppins',
        primaryColor: primaryColor,
        accentColor: accentColor,
      ),
      home: PersistentTabView(
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
      ),
    );
  }
}
