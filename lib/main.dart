import 'package:flutter/material.dart';
import 'package:yaha/constants.dart';
import 'package:yaha/entities/doctor.dart';
import 'package:yaha/screens/DoctorScreen.dart';
import 'package:yaha/screens/home.dart';

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
          fontFamily: 'Poppins',
          primaryColor: primaryColor,
          accentColor: accentColor,
        ),
        home: DoctorScreen(
          doctor: Doctor(
            firstName: "Sayed",
            lastName: "Alfy",
            specialization: "Heart Disease",
            rating: 3.9,
            phoneNumber: 966138877661,
          ),
        ));
  }
}
