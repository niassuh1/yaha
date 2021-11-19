import 'package:flutter/material.dart';
import 'package:yaha/constants.dart';
import 'package:yaha/screens/home.dart';
import 'package:yaha/screens/login.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
<<<<<<< HEAD
        fontFamily: 'Poppins',
        primaryColor: primaryColor,
        accentColor: accentColor,
      ),
      home: Login(),
=======
          fontFamily: 'Poppins',
          primaryColor: primaryColor,
          accentColor: accentColor,
          scaffoldBackgroundColor: Colors.white),
      home: Home(),
>>>>>>> 8e1b60497e5160f7c7ee19e5c5dfbde29c888d4a
    );
  }
}
