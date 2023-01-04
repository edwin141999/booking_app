import 'package:booking_app/styles/fonts/fonts_view.dart';
import 'package:booking_app/widgets/about.dart';
import 'package:booking_app/widgets/point_check.dart';
import 'package:flutter/material.dart';

class InfoPlaya extends StatelessWidget {
  const InfoPlaya({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.bottomCenter,
      child: Container(
        height: MediaQuery.of(context).size.height * 0.6,
        width: double.infinity,
        decoration: const BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(30),
            topRight: Radius.circular(30),
          ),
        ),
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
        child: ListView(
          children: [
            // TITLE
            Text(
              'Palolem Beach',
              style: FontSelect.kTitle45
                  .copyWith(fontSize: 35, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 5),
            Text(
              'Italy, Manarola',
              style: FontSelect.kSubtitle16.copyWith(fontSize: 18),
            ),
            const SizedBox(height: 30),
            // POINTS AND CHECK
            const PointCheck(),
            // ABOUT
            const SizedBox(height: 30),
            const About(),
            // INCLUDE

            // MAP?

            // TOTAL COST
          ],
        ),
      ),
    );
  }
}
