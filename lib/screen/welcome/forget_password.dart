import 'package:booking_app/styles/colors/colors_view.dart';
import 'package:booking_app/styles/fonts/fonts_view.dart';
import 'package:booking_app/widget/button_back.dart';
import 'package:flutter/material.dart';

class ForgetPassword extends StatelessWidget {
  const ForgetPassword({Key? key}) : super(key: key);

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
                SizedBox(
                  width: MediaQuery.of(context).size.width * 0.8,
                  height: 55,
                  child: OutlinedButton(
                    onPressed: () {
                      Navigator.pushNamed(context, '/verification');
                    },
                    style: OutlinedButton.styleFrom(
                        backgroundColor: ColorSelect.kColorPrimary,
                        side:
                            const BorderSide(color: ColorSelect.kColorPrimary),
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(50))),
                    child:
                        const Text('Send', style: FontSelect.kBtnText20White),
                  ),
                ),
              ]),
        ),
      ),
    );
  }
}
