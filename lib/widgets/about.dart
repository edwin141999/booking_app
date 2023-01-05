import 'package:booking_app/styles/colors/colors_view.dart';
import 'package:booking_app/styles/fonts/fonts_view.dart';
import 'package:flutter/material.dart';

class About extends StatelessWidget {
  const About({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Text('About Trip', style: FontSelect.kTitle24),
        const SizedBox(height: 15),
        Text(
            "Manarola has its own train station and can be reached from either La Spezia or Levanto. From La Spezia, take the local train (treno regionale) in the direction of Sestri Levante and get off at the first stop. From Levanto, take the regional train in the direction of La Spezia Centrale",
            style: FontSelect.kSubtitle12
                .copyWith(color: ColorSelect.kTextSecondary)),
      ],
    );
  }
}
