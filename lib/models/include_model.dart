import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class IncludeModel {
  final IconData icon;
  final String text;

  IncludeModel({required this.icon, required this.text});
}

List<IncludeModel> includeList = [
  IncludeModel(icon: Icons.flight, text: 'Flight'),
  IncludeModel(icon: FontAwesomeIcons.hotel, text: 'Hotel'),
  IncludeModel(icon: FontAwesomeIcons.car, text: 'Trasfer'),
];
