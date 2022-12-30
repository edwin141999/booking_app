import 'dart:developer';

import 'package:booking_app/services/google_sign_in.dart';
import 'package:booking_app/styles/colors/colors_view.dart';
import 'package:booking_app/styles/fonts/fonts_view.dart';
import 'package:flutter/material.dart';

class OnBoarding extends StatelessWidget {
  OnBoarding({Key? key}) : super(key: key);

  final styleBtn = OutlinedButton.styleFrom(
    padding: const EdgeInsets.symmetric(horizontal: 30),
    side: BorderSide(color: ColorSelect.kTextSecondary.withOpacity(0.5)),
    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(50)),
  );

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Image.asset(
          'assets/images/bg-welcome.png',
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height,
          fit: BoxFit.cover,
        ),
        Scaffold(
          backgroundColor: Colors.transparent,
          body: SafeArea(
            child: SizedBox(
              width: double.infinity,
              height: MediaQuery.of(context).size.height * .4,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Column(
                    children: const [
                      Text('Welcome', style: FontSelect.kTitle45),
                      Text('Explore the new experience with Azel',
                          style: FontSelect.kSubtitle16),
                    ],
                  ),
                  SizedBox(
                    width: MediaQuery.of(context).size.width * 0.8,
                    child: OutlinedButton(
                      onPressed: () {
                        ServiceGoogle().sigInWithGoogle().then(
                          (value) {
                            Navigator.pushNamed(context, '/home',
                                arguments: value,);
                          },
                        ).catchError(
                          (error) {
                            log('ERROR');
                            log(error.toString());
                          },
                        );
                      },
                      style: styleBtn,
                      child: SizedBox(
                        height: 55,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Image.asset('assets/images/google-logo.png',
                                height: 25),
                            const Text('Continue With Google',
                                style: FontSelect.kBtnText16),
                          ],
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    width: MediaQuery.of(context).size.width * 0.8,
                    child: OutlinedButton(
                      onPressed: () {},
                      style: styleBtn,
                      child: SizedBox(
                        height: 55,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: const [
                            Image(
                                image: AssetImage('assets/images/fb-logo.png'),
                                height: 25),
                            Text('Continue With Facebook',
                                style: FontSelect.kBtnText16),
                          ],
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ],
    );
  }
}
