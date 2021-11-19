import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:country_code_picker/country_code_picker.dart';

class Login extends StatefulWidget {
  const Login({Key? key}) : super(key: key);

  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<Login> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
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
                SizedBox(height: 40),
                bot(),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Center image(BuildContext context) {
    return Center(
        child: Stack(children: [
      Center(
        child: SvgPicture.asset(
          'assets/images/window.svg',
          width: MediaQuery.of(context).size.width,
          height: 300,
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
      )),
      Center(
          child: Text(
        "        We are ready to provide\nthe best services you can ask for",
        style: TextStyle(color: Colors.grey[400]),
      ))
    ]);
  }

  String? countrycode = "+966";

  Column signin(BuildContext context) {
    return Column(children: [
      // container -> dropdownlist + textfield

      Center(
        child: Container(
          width: MediaQuery.of(context).size.width - 150,
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

                    print("$countrycode hi");
                  },
                  initialSelection: '+966',
                  favorite: ['+966', 'sa'],
                ),
              ),
              Expanded(
                child: TextField(
                  decoration: InputDecoration(
                      hintText: "$countrycode", border: InputBorder.none),
                ),
              )
            ],
          ),
        ),
      ),
      SizedBox(
        width: 200,
        child: TextButton(
          onPressed: () {},
          child: Text(
            "SIGN IN",
            style: TextStyle(letterSpacing: 1),
          ),
        ),
      ),
      // button
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
