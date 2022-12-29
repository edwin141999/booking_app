import 'package:booking_app/styles/colors/colors_view.dart';
import 'package:booking_app/styles/fonts/fonts_view.dart';
import 'package:flutter/material.dart';

class LogInEmail extends StatelessWidget {
  final PageController controller;
  const LogInEmail({Key? key, required this.controller}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: ColorSelect.kBackground,
        elevation: 0,
        leading: Padding(
          padding: const EdgeInsets.all(5.0),
          child: Container(
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
        ),
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
                SizedBox(
                  width: MediaQuery.of(context).size.width * 0.8,
                  height: 55,
                  child: OutlinedButton(
                    onPressed: () {
                      Navigator.pushNamed(context, '/password');
                    },
                    style: OutlinedButton.styleFrom(
                        backgroundColor: ColorSelect.kColorPrimary,
                        side:
                            const BorderSide(color: ColorSelect.kColorPrimary),
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(50))),
                    child: const Text('Continue',
                        style: FontSelect.kBtnText20White),
                  ),
                ),
                Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: const [
                      Text("Don't have account? ",
                          style: FontSelect.kSubtitle16),
                      Text(
                        'Sign Up',
                        style: TextStyle(
                            color: ColorSelect.kColorSecondary,
                            fontSize: 16,
                            fontWeight: FontWeight.w500),
                      )
                    ]),
              ]),
        ),
      ),
    );
  }
}
