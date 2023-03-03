import 'package:booking_app/styles/fonts/fonts_view.dart';
import 'package:booking_app/widgets/btn_continue.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

class CongratsScreen extends StatelessWidget {
  const CongratsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final arguments = ModalRoute.of(context)!.settings.arguments;
    final userData = arguments as UserCredential;
    return Scaffold(
      body: SingleChildScrollView(
        padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 20),
        child: SizedBox(
          height: MediaQuery.of(context).size.height,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset('assets/images/congrats.png',
                  width: 300, height: 100),
              const SizedBox(height: 30),
              const Text(
                'Your tickets has been booked! You will get your tickets on your email or check your profile',
                style: FontSelect.kSubtitle16,
                textAlign: TextAlign.center,
              ),
              const SizedBox(height: 30),
              BtnContinue(
                btnText: 'Back to Home',
                onPressed: () {
                  Navigator.pushNamed(context, '/popular', arguments: userData);
                },
              )
            ],
          ),
        ),
      ),
    );
  }
}
