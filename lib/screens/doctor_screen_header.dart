import 'package:flutter/material.dart';
import 'package:flutter/src/rendering/sliver_persistent_header.dart';
import 'package:flutter_svg/svg.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:yaha/entities/doctor.dart';

class DoctorScreenHeader extends SliverPersistentHeaderDelegate {
  const DoctorScreenHeader(
      {this.minExtent = 0, required this.maxExtent, required this.doctor});

  final double minExtent;
  final double maxExtent;
  final Doctor doctor;

  @override
  Widget build(
      BuildContext context, double shrinkOffset, bool overlapsContent) {
    ThemeData theme = Theme.of(context);
    Radius defaultRadius = Radius.circular(30);
    // TODO: implement build
    return Stack(
      children: [
        Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(colors: [
              Colors.blue[300]!,
              theme.primaryColor,
            ], begin: Alignment.topLeft, end: Alignment.bottomRight),
          ),
        ),
        Positioned(
          top: 60,
          right: MediaQuery.of(context).size.width / 4,
          left: MediaQuery.of(context).size.width / 4,
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SvgPicture.asset(
                  'assets/images/man.svg',
                  width: 60,
                ),
                SizedBox(
                  height: 15,
                ),
                Text(
                  'Dr.${doctor.firstName} ${doctor.lastName}',
                  style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.w500,
                  ),
                ),
                Text(
                  '${doctor.specialization}',
                  style: TextStyle(
                    color: Colors.white54,
                    fontWeight: FontWeight.w500,
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    circleButton(icon: FontAwesomeIcons.solidCommentAlt),
                    SizedBox(width: 12),
                    circleButton(icon: FontAwesomeIcons.video),
                  ],
                ),
              ],
            ),
          ),
        ),
        Positioned(
          bottom: -10,
          child: Container(
            height: 50,
            width: MediaQuery.of(context).size.width,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.only(
                topLeft: defaultRadius,
                topRight: defaultRadius,
              ),
              boxShadow: [
                BoxShadow(
                  color: Colors.black.withOpacity(.2),
                  blurRadius: 20,
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }

  Container circleButton({required IconData icon}) {
    return Container(
      width: 50,
      height: 50,
      clipBehavior: Clip.antiAlias,
      decoration: BoxDecoration(
        color: Colors.white.withOpacity(.3),
        borderRadius: BorderRadius.circular(25),
      ),
      child: Material(
        color: Colors.transparent,
        child: InkWell(
          splashColor: Colors.blueAccent.withOpacity(.4),
          highlightColor: Colors.blueAccent.withOpacity(.6),
          onTap: () {},
          child: Icon(
            icon,
            color: Colors.white,
            size: 18,
          ),
        ),
      ),
    );
  }

  @override
  bool shouldRebuild(covariant SliverPersistentHeaderDelegate oldDelegate) {
    // TODO: implement shouldRebuild
    return true;
  }
}
