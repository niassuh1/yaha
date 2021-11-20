import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:country_code_picker/country_code_picker.dart';

class Login extends StatefulWidget {
  const Login({this.signInTab});

  final Function()? signInTab;

  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<Login> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: CustomScrollView(
          slivers: [
            SliverToBoxAdapter(
              child: Column(
                children: [
                  top(),
                  SizedBox(
                    height: 50,
                  ),
                  image(context),
                  SizedBox(height: 30),
                  signin(context),
                  SizedBox(height: 30),
                  bot(),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Center image(BuildContext context) {
    return Center(
        child: Stack(children: [
      Center(
        child: SvgPicture.asset(
          'assets/images/window.svg',
          width: MediaQuery.of(context).size.width - 30,
        ),
      ),
      Center(
        child: SvgPicture.asset(
          'assets/images/plant.svg',
          width: MediaQuery.of(context).size.width,
          height: 300,
        ),
      ),
    ]));
  }

  Column top() {
    return Column(children: [
      SizedBox(height: 20),
      Center(
        child: Text(
          "Welcome",
          style: TextStyle(fontSize: 30),
        ),
      ),
      Center(
        child: Text(
          "        We are ready to provide\nthe best services you can ask for",
          style: TextStyle(color: Colors.grey[400]),
        ),
      )
    ]);
  }

  String? countrycode = "+966";
  String number = "";
  Column signin(BuildContext context) {
    return Column(children: [
      // container -> dropdownlist + textfield

      Center(
        child: Container(
          width: MediaQuery.of(context).size.width - 60,
          height: 50,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10), color: Colors.grey[200]),
          child: Row(
            children: [
              SizedBox(
                child: CountryCodePicker(
                  flagWidth: 20,
                  hideMainText: true,
                  showDropDownButton: true,
                  onChanged: (value) {
                    setState(() {
                      countrycode = value.dialCode;
                    });
                  },
                  initialSelection: '+966',
                  favorite: ['+966', 'sa'],
                ),
              ),
              Expanded(
                child: TextField(
                  onChanged: (value) {
                    setState(() {
                      number = value;
                    });
                  },
                  keyboardType: TextInputType.phone,
                  decoration: InputDecoration(
                      hintText: "$countrycode", border: InputBorder.none),
                ),
              )
            ],
          ),
        ),
      ),
      SizedBox(
        height: 12,
      ),
      Container(
        width: MediaQuery.of(context).size.width / 1.5,
        clipBehavior: Clip.antiAlias,
        decoration: BoxDecoration(
            border: Border.all(
              width: 1.5,
            ),
            borderRadius: BorderRadius.circular(25)),
        child: Material(
          color: Colors.transparent,
          child: InkWell(
            onTap: number == "+966595312337" ? widget.signInTab : () {},
            child: Ink(
              height: 50,
              width: double.infinity,
              child: Center(
                  child: Text(
                'Sign In'.toUpperCase(),
                style: TextStyle(
                  fontSize: 15,
                  fontWeight: FontWeight.w600,
                  letterSpacing: 1.5,
                ),
              )),
            ),
          ),
        ),
      ),
    ]);
  }

  Column bot() {
    return Column(children: [
      Row(
        children: [
          Spacer(flex: 1),
          Container(
            height: 1,
            width: 60,
            color: Colors.grey[400],
          ),
          Spacer(flex: 1),
          Text(
            "DONT HAVE AN ACCOUNT?",
            style: TextStyle(color: Colors.grey[400]),
          ),
          Spacer(flex: 1),
          Container(
            height: 1,
            width: 60,
            color: Colors.grey[400],
          ),
          Spacer(flex: 1)
        ],
      ),
      Text("SIGN UP", style: TextStyle(letterSpacing: 1)),
      SizedBox(
        height: 20,
      ),
    ]);
  }
}
