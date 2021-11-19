import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:persistent_bottom_nav_bar/persistent-tab-view.dart';
import 'package:yaha/entities/doctor.dart';
import 'package:yaha/screens/doctor_screen.dart';
import 'package:yaha/widgets/star_badge.dart';

class DoctorCard extends StatelessWidget {
  const DoctorCard({required this.doctor});
  final Doctor doctor;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.of(context).push((MaterialPageRoute(
          builder: (context) => DoctorScreen(doctor: doctor),
        )));
      },
      child: Container(
        height: 225,
        padding: EdgeInsets.symmetric(vertical: 12, horizontal: 4),
        width: MediaQuery.of(context).size.width / 2.20,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color: Colors.white,
          boxShadow: [
            BoxShadow(color: Colors.black.withAlpha(10), blurRadius: 10)
          ],
        ),
        child: Column(
          children: [
            CircleAvatar(
              radius: 32,
              backgroundColor: Colors.orangeAccent.withOpacity(.55),
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: SvgPicture.asset(
                  'assets/images/man.svg',
                ),
              ),
            ),
            SizedBox(
              height: 8,
            ),
            Text(
              'Dr. ${doctor.firstName} ${doctor.lastName}',
              textAlign: TextAlign.center,
              style: TextStyle(
                fontWeight: FontWeight.w600,
                color: Colors.black.withOpacity(.75),
              ),
            ),
            Text(
              doctor.specialization,
              style: TextStyle(color: Colors.black26),
            ),
            Spacer(),
            SizedBox(width: 100, child: StarBadge(rating: doctor.rating)),
          ],
        ),
      ),
    );
  }
}
