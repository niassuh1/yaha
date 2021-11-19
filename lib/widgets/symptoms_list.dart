import 'package:flutter/material.dart';
import 'package:yaha/constants.dart';
import 'package:yaha/entities/symptoms.dart';

class SymptomsList extends StatefulWidget {
  const SymptomsList({required this.symptoms, required this.height});
  final List<Symptom> symptoms;
  final double height;

  @override
  _SymptomsListState createState() => _SymptomsListState();
}

class _SymptomsListState extends State<SymptomsList> {
  @override
  Widget build(BuildContext context) {
    double height = widget.height;
    List<Symptom> symptoms = widget.symptoms;
    return SizedBox(
      height: height,
      child: ListView.builder(
        itemCount: symptoms.length,
        scrollDirection: Axis.horizontal,
        padding: EdgeInsets.symmetric(horizontal: defaultPadding),
        itemBuilder: (context, i) {
          Symptom symptom = symptoms[i];
          return Container(
            clipBehavior: Clip.antiAlias,
            decoration: BoxDecoration(
              color: Colors.grey[200],
              borderRadius: BorderRadius.circular(height / 2),
            ),
            margin: EdgeInsets.only(right: 10),
            child: Material(
              color: Colors.transparent,
              child: InkWell(
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) =>
                            _EmptyCenterPage(symptom: symptom),
                      ));
                },
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 12),
                  child: Row(
                    children: [
                      Text(symptoms[i].emoji),
                      SizedBox(
                        width: 8,
                      ),
                      Text(
                        symptoms[i].title,
                        style: TextStyle(
                          fontWeight: FontWeight.w500,
                          color: Colors.black.withOpacity(.65),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}

class _EmptyCenterPage extends StatelessWidget {
  const _EmptyCenterPage({
    Key? key,
    required this.symptom,
  }) : super(key: key);

  final Symptom symptom;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text(symptom.title),
      ),
    );
  }
}
