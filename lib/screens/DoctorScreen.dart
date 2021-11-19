import 'package:flutter/material.dart';
// import 'package:flutter_phone_direct_caller/flutter_phone_direct_caller.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:yaha/entities/doctor.dart';
import 'package:yaha/screens/Home.dart';
import 'package:url_launcher/url_launcher.dart' as UrlLauncher;

import '../constants.dart';

class DoctorScreen extends StatelessWidget {
  const DoctorScreen({required this.doctor});
  final Doctor doctor;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Expanded(
              child: Icon(
            FontAwesomeIcons.userNurse,
            size: 40,
            color: Colors.white,
          )),
          Expanded(
              child: Text(
            'Dr. ${doctor.firstName} ${doctor.lastName} \n Specialist in ${doctor.specialization}',
            textAlign: TextAlign.center,
            overflow: TextOverflow.ellipsis,
            style: const TextStyle(
                fontWeight: FontWeight.bold, color: Colors.white),
          )),

          // Expanded(
          //     child: Icon(
          //   FontAwesomeIcons.phone,
          //   size: 20,
          //   color: Colors.grey[200],
          // )),
          IconButton(
            icon: const Icon(Icons.phone),
            color: Colors.white,
            onPressed: () async {
              // await FlutterPhoneDirectCaller.callNumber(
              // '+${doctor.phoneNumber}');
              launch('tel:+${doctor.phoneNumber}');
            },
            // disabledColor: Colors.grey[200],
          ),
          Spacer(),
          BottomPart()
        ],
      ),
      backgroundColor: Theme.of(context).primaryColor,
    );
  }
}

class BottomPart extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Radius radius = Radius.circular(50);
    return ClipRRect(
      borderRadius: BorderRadius.only(topLeft: radius, topRight: radius),
      child: Container(
        height: 500,
        width: MediaQuery.of(context).size.width,
        color: Colors.grey[100],
      ),
    );
  }
}
