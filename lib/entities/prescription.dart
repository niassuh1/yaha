import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import 'doctor.dart';

class Prescription {
  final IconData icon;
  final String title;
  final String instruction;
  final DateTime dueDate;
  final bool isMarked;
  final Doctor doctor;
  const Prescription({
    required this.icon,
    required this.title,
    required this.instruction,
    required this.dueDate,
    required this.doctor,
    this.isMarked = false,
  });
}

List<Prescription> prescription = [
  Prescription(
    icon: FontAwesomeIcons.pills,
    title: 'Ibuprofen',
    instruction: 'Take 1(25 mg) once every day after eating',
    doctor: Doctor(
        firstName: 'Ahmad',
        lastName: 'Ali',
        location: Location(locationDetails: '', locationName: ''),
        phoneNumber: 32132131,
        rating: 0.0,
        specialization: ''),
    dueDate: DateTime(2021, 11, 22, 8),
  ),
  Prescription(
    icon: FontAwesomeIcons.tablets,
    title: 'Vitamin C',
    instruction: 'Take 1 with water every 12 hours',
    dueDate: DateTime(2021, 11, 22, 13),
    doctor: Doctor(
        firstName: 'Hussain',
        lastName: 'Al Zayer',
        location: Location(locationDetails: '', locationName: ''),
        phoneNumber: 32132131,
        rating: 0.0,
        specialization: ''),
  ),
  Prescription(
    icon: FontAwesomeIcons.prescriptionBottle,
    title: 'Nexium',
    instruction: 'Take 30 mins before meal, take one per day',
    dueDate: DateTime(2021, 11, 21, 12),
    doctor: Doctor(
        firstName: 'Hussain',
        lastName: 'Al Zayer',
        location: Location(locationDetails: '', locationName: ''),
        phoneNumber: 32132131,
        rating: 0.0,
        specialization: ''),
  ),
];
