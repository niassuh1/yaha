import 'package:flutter/material.dart';
// import 'package:flutter_phone_direct_caller/flutter_phone_direct_caller.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import 'package:yaha/entities/doctor.dart';
import 'package:yaha/entities/review.dart';
import 'package:yaha/screens/home.dart';
import 'package:yaha/screens/doctor_screen_header.dart';
import 'package:yaha/widgets/review_card.dart';

import '../constants.dart';

class DoctorScreen extends StatelessWidget {
  const DoctorScreen({required this.doctor});
  final Doctor doctor;
  @override
  Widget build(BuildContext context) {
    ThemeData theme = Theme.of(context);
    return Scaffold(
      backgroundColor: Colors.white,
      body: CustomScrollView(
        slivers: [
          SliverPersistentHeader(
            delegate: DoctorScreenHeader(
                minExtent: 10,
                doctor: doctor,
                maxExtent: MediaQuery.of(context).size.height / 2.5),
          ),
          SliverToBoxAdapter(
              child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 12, vertical: 4),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                buildSectionTitle('About Doctor'),
                Text(
                    'Dr ${doctor.firstName} is an experienced specialist who constantly improves their own skills'),
                SizedBox(height: 12),
                Row(
                  children: [
                    buildSectionTitle('Reviews'),
                    Icon(
                      Icons.star_rounded,
                      color: Colors.amber,
                    ),
                    Text(doctor.rating.toString())
                  ],
                ),
                Container(
                  height: 200,
                  child: ListView.builder(
                    itemCount: reviews.length,
                    scrollDirection: Axis.horizontal,
                    itemBuilder: (context, index) {
                      return ReviewCard(review: reviews[index]);
                    },
                  ),
                ),
                buildSectionTitle('Location'),
                buildTile(
                  icon: Icons.location_pin,
                  title: doctor.location.locationName,
                  subtitle: doctor.location.locationDetails,
                ),
                SizedBox(
                  height: 10,
                ),
              ],
            ),
          )),
        ],
      ),
      bottomNavigationBar: buildButton(theme),
    );
  }

  Material buildTile(
      {required IconData icon,
      required String title,
      required String subtitle}) {
    return Material(
      color: Colors.transparent,
      child: ListTile(
        contentPadding: EdgeInsets.symmetric(horizontal: 4),
        leading: Container(
          padding: EdgeInsets.all(8),
          decoration: BoxDecoration(
            color: Colors.blue[50],
            borderRadius: BorderRadius.circular(20),
          ),
          child: Icon(
            icon,
            color: Colors.blueAccent[400],
          ),
        ),
        title: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              title,
              style: TextStyle(
                fontWeight: FontWeight.w500,
              ),
            ),
            Text(
              subtitle,
              style: TextStyle(
                fontSize: 13,
                color: Colors.black38,
              ),
            ),
          ],
        ),
      ),
    );
  }

  Text buildSectionTitle(String title) {
    return Text(
      title,
      style: TextStyle(
        fontWeight: FontWeight.w600,
        fontSize: 16,
      ),
    );
  }

  Container buildButton(ThemeData theme) {
    return Container(
      clipBehavior: Clip.antiAlias,
      alignment: Alignment.center,
      margin: EdgeInsets.all(10),
      height: 60,
      decoration: BoxDecoration(
        color: theme.primaryColor,
        borderRadius: BorderRadius.circular(15),
      ),
      child: Material(
        color: Colors.transparent,
        child: InkWell(
          splashColor: Colors.white.withOpacity(.4),
          onTap: () {},
          child: Ink(
            width: double.infinity,
            height: double.infinity,
            child: Center(
              child: Text(
                'Book An Appointment',
                style: TextStyle(
                  color: Colors.white,
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
