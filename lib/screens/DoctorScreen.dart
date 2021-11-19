import 'package:flutter/material.dart';
// import 'package:flutter_phone_direct_caller/flutter_phone_direct_caller.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import 'package:yaha/entities/doctor.dart';
import 'package:yaha/screens/Home.dart';
import 'package:yaha/screens/doctor_screen_header.dart';

import '../constants.dart';

class DoctorScreen extends StatelessWidget {
  const DoctorScreen({required this.doctor});
  final Doctor doctor;
  @override
  Widget build(BuildContext context) {
    ThemeData theme = Theme.of(context);
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          SliverPersistentHeader(
            delegate: DoctorScreenHeader(
                minExtent: 10,
                doctor: doctor,
                maxExtent: MediaQuery.of(context).size.height / 2.5),
          ),
          SliverToBoxAdapter(
            child: SizedBox(
              height: 900,
            ),
          ),
        ],
      ),
      bottomNavigationBar: Material(
        color: Colors.transparent,
        child: Container(
          margin: EdgeInsets.all(10),
          height: 60,
          color: theme.primaryColor,
        ),
      ),
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
