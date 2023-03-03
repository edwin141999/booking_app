import 'package:booking_app/styles/colors/colors_view.dart';
import 'package:booking_app/styles/fonts/fonts_view.dart';
import 'package:booking_app/widgets/btn_continue.dart';
import 'package:flutter/material.dart';

class EmailScreen extends StatelessWidget {
  final PageController controller;
  const EmailScreen({Key? key, required this.controller}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: ColorSelect.kBackground,
        elevation: 0,
        title: Container(
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(100),
              border: Border.all(
                  color: ColorSelect.kTextSecondary.withOpacity(.5))),
          child: IconButton(
            onPressed: () {
              controller.animateToPage(0,
                  duration: const Duration(milliseconds: 500),
                  curve: Curves.easeIn);
            },
            icon: const Icon(Icons.arrow_back_ios,
                color: ColorSelect.kTextSecondary),
            padding: const EdgeInsets.only(left: 10),
          ),
        ),
        automaticallyImplyLeading: false,
      ),
      backgroundColor: ColorSelect.kBackground,
      body: SafeArea(
        minimum: const EdgeInsets.symmetric(horizontal: 20),
        child: SizedBox(
          width: double.infinity,
          height: MediaQuery.of(context).size.height * .5,
          child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Container(
                    alignment: Alignment.centerLeft,
                    child: const Text("What's Your Email?",
                        style: FontSelect.kTitle26)),
                const TextField(
                    keyboardType: TextInputType.emailAddress,
                    decoration: InputDecoration(
                        labelText: 'Email', labelStyle: FontSelect.kSubtitle16),
                    style: FontSelect.kSubtitle18),
                BtnContinue(
                  btnText: 'Continue',
                  onPressed: () {
                    Navigator.pushNamed(context, '/password');
                  },
                ),
                Row(mainAxisAlignment: MainAxisAlignment.center, children: [
                  const Text("Don't have account? ",
                      style: FontSelect.kSubtitle16),
                  GestureDetector(
                    onTap: () {
                      Navigator.pushNamed(context, '/signup');
                    },
                    child: const Text(
                      'Sign Up',
                      style: TextStyle(
                          color: ColorSelect.kColorSecondary,
                          fontSize: 16,
                          fontWeight: FontWeight.w500),
                    ),
                  )
                ]),
              ]),
        ),
      ),
    );
  }
}
