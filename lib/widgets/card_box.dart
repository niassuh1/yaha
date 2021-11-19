import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:yaha/constants.dart';

class CardBox extends StatelessWidget {
  const CardBox(
      {this.title = "",
      this.subtitle = "",
      this.onTap,
      this.color = Colors.blue,
      this.linearGradient,
      this.titleColor = Colors.white,
      this.subTitleColor = Colors.white54,
      required this.icon});

  final String title;
  final String subtitle;
  final Color color;
  final LinearGradient? linearGradient;
  final IconData icon;
  final Color titleColor;
  final Color subTitleColor;

  final Function()? onTap;

  @override
  Widget build(BuildContext context) {
    ThemeData theme = Theme.of(context);
    return GestureDetector(
      onTap: this.onTap,
      child: Container(
        width: 175,
        height: 175,
        padding: EdgeInsets.all(12),
        decoration: BoxDecoration(
          color: this.color,
          gradient: this.linearGradient,
          borderRadius: BorderRadius.circular(20),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              width: 45,
              height: 45,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(22.5),
              ),
              child: Icon(
                this.icon,
                color: theme.primaryColor,
              ),
            ),
            Spacer(),
            buildTitle(),
            buildSubtitle(),
          ],
        ),
      ),
    );
  }

  Text buildSubtitle() {
    return Text(
      this.subtitle,
      style: TextStyle(
        color: subTitleColor,
        fontSize: 10.5,
        fontWeight: FontWeight.w500,
      ),
    );
  }

  Text buildTitle() {
    return Text(
      this.title,
      style: TextStyle(
        color: titleColor,
        fontSize: 16,
      ),
    );
  }
}
