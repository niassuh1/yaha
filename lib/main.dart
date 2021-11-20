import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:persistent_bottom_nav_bar/persistent-tab-view.dart';
import 'package:yaha/constants.dart';
import 'package:yaha/screens/home.dart';
import 'package:yaha/screens/login.dart';
import 'package:yaha/screens/main_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  bool authenticated = false;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          fontFamily: 'Poppins',
          primaryColor: primaryColor,
          accentColor: accentColor,
        ),
        home: authenticated
            ? MainScreen()
            : Login(
                signInTab: () {
                  setState(() {
                    authenticated = true;
                  });
                },
              ));
  }
}
