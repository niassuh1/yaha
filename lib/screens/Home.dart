import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:yaha/constants.dart';
import 'package:yaha/entities/doctor.dart';
import 'package:yaha/entities/symptoms.dart';
import 'package:yaha/widgets/card_box.dart';
import 'package:yaha/widgets/doctor_card.dart';
import 'package:yaha/widgets/symptoms_list.dart';

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    ThemeData theme = Theme.of(context);
    return Scaffold(
        body: CustomScrollView(
      slivers: [
        buildSliverAppBar(),
        SliverToBoxAdapter(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: defaultPadding),
                child: Row(
                  children: [
                    CardBox(
                      color: theme.primaryColor,
                      title: 'Clinic',
                      subtitle: 'Make an Appointment',
                      linearGradient: LinearGradient(
                        colors: [
                          Colors.blue[300]!,
                          theme.primaryColor,
                        ],
                        begin: Alignment.topLeft,
                        end: Alignment.bottomRight,
                      ),
                      icon: FontAwesomeIcons.hospital,
                    ),
                    Spacer(),
                    CardBox(
                      icon: FontAwesomeIcons.video,
                      linearGradient: LinearGradient(
                        colors: [
                          Colors.black.withAlpha(180),
                          Colors.black87,
                        ],
                        begin: Alignment.topLeft,
                        end: Alignment.bottomRight,
                      ),
                      title: 'Home Visit',
                      subtitle: 'Call The Doctor',
                    ),
                  ],
                ),
              ),
              sectionTitle('What Are Your Symptoms'),
              SymptomsList(
                symptoms: symptoms,
                height: 40,
              ),
              SizedBox(
                height: 15,
              ),
              sectionTitle('Popular Doctors Around You'),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: defaultPadding),
                child: SizedBox(
                  width: MediaQuery.of(context).size.width,
                  child: Wrap(
                    direction: Axis.horizontal,
                    alignment: WrapAlignment.spaceBetween,
                    runSpacing: 15,
                    crossAxisAlignment: WrapCrossAlignment.start,
                    children: [
                      DoctorCard(
                        doctor: Doctor(
                            firstName: 'Hussain',
                            lastName: 'Al Zayer',
                            rating: 4.5,
                            specialization: 'Dermatologist'),
                      ),
                      DoctorCard(
                        doctor: Doctor(
                            firstName: 'Ahmad',
                            lastName: 'Mohammad',
                            rating: 4.5,
                            specialization: 'Oncologist'),
                      ),
                      DoctorCard(
                        doctor: Doctor(
                            firstName: 'Hussain',
                            lastName: 'Al Zayer',
                            rating: 4.5,
                            specialization: 'Dermatologist'),
                      ),
                      DoctorCard(
                        doctor: Doctor(
                            firstName: 'Ahmad',
                            lastName: 'Mohammad',
                            rating: 4.5,
                            specialization: 'Oncologist'),
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: 20,
              )
            ],
          ),
        )
      ],
    ));
  }

  SliverAppBar buildSliverAppBar() {
    return SliverAppBar(
      toolbarHeight: 80,
      floating: true,
      backgroundColor: Colors.white,
      shadowColor: Colors.black38,
      elevation: 6,
      textTheme: TextTheme(
          title: TextStyle(
              color: Colors.black, fontSize: 18, fontFamily: 'Poppins')),
      title: buildTitle(),
      actions: [buildProfile()],
    );
  }

  Padding sectionTitle(String title) {
    return Padding(
      padding:
          const EdgeInsets.symmetric(vertical: 12, horizontal: defaultPadding),
      child: Text(
        title,
        style: TextStyle(fontSize: 18, fontWeight: FontWeight.w600),
      ),
    );
  }

  Widget buildProfile() {
    return Padding(
      padding: const EdgeInsets.only(right: defaultPadding),
      child: GestureDetector(
        onTap: () {
          print('Avatar Tapped');
        },
        child: CircleAvatar(),
      ),
    );
  }

  Column buildTitle() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SizedBox(
          height: 12,
        ),
        Text(
          'Greetings,',
          style:
              TextStyle(fontSize: 12, height: 0, fontWeight: FontWeight.w600),
        ),
        Text('Hussain'),
      ],
    );
  }
}
