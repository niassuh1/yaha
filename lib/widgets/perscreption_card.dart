import 'package:flutter/material.dart';
import 'package:yaha/constants.dart';
import 'package:yaha/entities/prescription.dart';

class PerscreptionCard extends StatefulWidget {
  const PerscreptionCard({required this.prescriptions});
  final List<Prescription> prescriptions;

  @override
  _PerscreptionCardState createState() => _PerscreptionCardState();
}

class _PerscreptionCardState extends State<PerscreptionCard> {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      padding: EdgeInsets.symmetric(horizontal: defaultPadding),
      shrinkWrap: true,
      itemCount: widget.prescriptions.length,
      scrollDirection: Axis.horizontal,
      itemBuilder: (context, index) {
        return MedicineCard(prescription: widget.prescriptions[index]);
      },
    );
  }
}

class MedicineCard extends StatefulWidget {
  const MedicineCard({required this.prescription});
  final Prescription prescription;

  @override
  _MedicineCardState createState() => _MedicineCardState();
}

class _MedicineCardState extends State<MedicineCard> {
  bool isDone = false;
  @override
  Widget build(BuildContext context) {
    Prescription prescription = widget.prescription;
    return Container(
      width: 200,
      margin: EdgeInsets.symmetric(horizontal: defaultPadding),
      padding: EdgeInsets.symmetric(vertical: 20, horizontal: 16),
      decoration: BoxDecoration(
        color: Colors.grey[100],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Icon(
                Icons.person,
                color: Colors.black38,
                size: 16,
              ),
              SizedBox(width: 5),
              Text(
                'Dr.${prescription.doctor.firstName} ${prescription.doctor.lastName}',
                style: TextStyle(fontSize: 13, color: Colors.black38),
              ),
            ],
          ),
          SizedBox(
            height: 12,
          ),
          Icon(
            prescription.icon,
            color: Colors.blueAccent,
            size: 28,
          ),
          SizedBox(
            height: 10,
          ),
          Text(
            prescription.title,
            textAlign: TextAlign.center,
            style: TextStyle(fontSize: 17, fontWeight: FontWeight.w600),
          ),
          SizedBox(
            height: 10,
          ),
          Text(
            prescription.instruction,
            textAlign: TextAlign.center,
            style: TextStyle(
              color: Colors.grey[600],
            ),
          ),
          Spacer(),
          GestureDetector(
            onTap: () {
              setState(() {
                isDone = !isDone;
              });
            },
            child: Container(
              alignment: Alignment.center,
              padding: EdgeInsets.all(12),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(30),
                color: isDone ? Colors.grey[300] : Colors.blueAccent[400],
              ),
              child: Text(
                isDone ? 'Done' : 'Mark Done',
                style: TextStyle(color: isDone ? Colors.black45 : Colors.white),
              ),
            ),
          )
        ],
      ),
    );
  }
}
