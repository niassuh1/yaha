import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:yaha/entities/doctor.dart';

class DoctorCard extends StatelessWidget {
  const DoctorCard({required this.doctor});
  final Doctor doctor;

  @override
  Widget build(BuildContext context) {
    return Container(
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
          Container(
            width: 100,
            padding: EdgeInsets.all(4),
            decoration: BoxDecoration(
                color: Colors.amber[50],
                borderRadius: BorderRadius.circular(20)),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(
                  Icons.star,
                  color: Colors.amber[600],
                ),
                SizedBox(
                  width: 5,
                ),
                Text(
                  doctor.rating.toString(),
                  style: TextStyle(
                    fontWeight: FontWeight.w500,
                    fontSize: 13,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
