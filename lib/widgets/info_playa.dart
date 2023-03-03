import 'package:booking_app/styles/fonts/fonts_view.dart';
import 'package:booking_app/widgets/about.dart';
import 'package:booking_app/widgets/include.dart';
import 'package:booking_app/widgets/point_check.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

class InfoPlaya extends StatelessWidget {
  const InfoPlaya({Key? key, required this.userData}) : super(key: key);
  final UserCredential userData;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Align(
        alignment: Alignment.bottomCenter,
        child: Container(
          height: MediaQuery.of(context).size.height * 0.7,
          width: double.infinity,
          decoration: const BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.only(
                topLeft: Radius.circular(30), topRight: Radius.circular(30)),
          ),
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: ListView(
            physics: const BouncingScrollPhysics(),
            children: [
              const SizedBox(height: 30),
              // TITLE
              Text(
                'Palolem Beach',
                style: FontSelect.kTitle45
                    .copyWith(fontSize: 35, fontWeight: FontWeight.bold),
              ),
              // const SizedBox(height: 5),
              Text(
                'Italy, Manarola',
                style: FontSelect.kSubtitle16.copyWith(fontSize: 18),
              ),
              // // POINTS AND CHECK
              const SizedBox(height: 30),
              PointCheck(userData: userData),
              // // ABOUT
              const SizedBox(height: 30),
              const About(),
              // // INCLUDE
              const SizedBox(height: 30),
              const Text("What's included", style: FontSelect.kTitle24),
              const SizedBox(height: 20),
              const Include(),
              const SizedBox(height: 20),
              // // MAP & TOTAL COST
              ClipRRect(
                borderRadius: BorderRadius.circular(30),
                child: Image.asset('assets/images/maps.jpg',
                    height: 180, width: double.infinity, fit: BoxFit.cover),
              ),
              const SizedBox(height: 150),
            ],
          ),
        ),
      ),
    );
  }
}
