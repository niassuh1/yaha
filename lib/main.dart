import 'package:flutter/material.dart';
import 'package:yaha/constants.dart';
import 'package:yaha/screens/Home.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        fontFamily: 'Poppins',
        primaryColor: primaryColor,
        accentColor: accentColor,
      ),
      home: Home(),
    );
  }
}
