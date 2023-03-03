import 'package:booking_app/styles/fonts/fonts_view.dart';
import 'package:booking_app/widgets/btn_continue.dart';
import 'package:booking_app/widgets/button_back.dart';
import 'package:flutter/material.dart';

class ForgetPasswordScreen extends StatelessWidget {
  const ForgetPasswordScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        title: const BtnBack(),
        automaticallyImplyLeading: false,
      ),
      backgroundColor: Colors.white,
      body: SafeArea(
        minimum: const EdgeInsets.symmetric(horizontal: 20),
        child: SizedBox(
          width: double.infinity,
          height: MediaQuery.of(context).size.height * .45,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Column(
                children: const [
                  Text("Forget Password?", style: FontSelect.kTitle26),
                  Text("Enter your email address",
                      style: FontSelect.kSubtitle16),
                ],
              ),
              const TextField(
                decoration: InputDecoration(hintText: 'Your Email'),
                style: FontSelect.kSubtitle18,
                textAlign: TextAlign.center,
              ),
              BtnContinue(
                btnText: 'Send',
                onPressed: () {
                  Navigator.pushNamed(context, '/verification');
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
