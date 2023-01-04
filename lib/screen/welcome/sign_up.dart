import 'package:booking_app/styles/colors/colors_view.dart';
import 'package:booking_app/styles/fonts/fonts_view.dart';
import 'package:booking_app/widget/button_back.dart';
import 'package:flutter/material.dart';

class SignUp extends StatelessWidget {
  const SignUp({Key? key}) : super(key: key);

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
      body: SingleChildScrollView(
        child: SafeArea(
          minimum: const EdgeInsets.symmetric(horizontal: 20),
          child: SizedBox(
            width: double.infinity,
            height: MediaQuery.of(context).size.height * .7,
            child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Container(
                      alignment: Alignment.centerLeft,
                      child: const Text("Sign Up", style: FontSelect.kTitle26)),
                  const TextField(
                      decoration: InputDecoration(
                          labelText: 'Name',
                          labelStyle: FontSelect.kSubtitle16,
                          hintText: 'Your Name'),
                      style: FontSelect.kSubtitle18),
                  const TextField(
                      decoration: InputDecoration(
                          labelText: 'Email',
                          labelStyle: FontSelect.kSubtitle16,
                          hintText: 'Your Email'),
                      style: FontSelect.kSubtitle18),
                  const TextField(
                      decoration: InputDecoration(
                          labelText: 'Password',
                          labelStyle: FontSelect.kSubtitle16,
                          hintText: 'Your Password'),
                      style: FontSelect.kSubtitle18),
                  SizedBox(
                    width: MediaQuery.of(context).size.width * 0.8,
                    height: 55,
                    child: OutlinedButton(
                      onPressed: () {},
                      style: OutlinedButton.styleFrom(
                          backgroundColor: ColorSelect.kColorPrimary,
                          side: const BorderSide(
                              color: ColorSelect.kColorPrimary),
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(50))),
                      child: const Text('Create Account',
                          style: FontSelect.kBtnText20White),
                    ),
                  ),
                  Row(mainAxisAlignment: MainAxisAlignment.center, children: [
                    const Text("Already have account? ",
                        style: FontSelect.kSubtitle16),
                    GestureDetector(
                      onTap: () {
                        Navigator.pushNamed(context, '/welcome');
                      },
                      child: const Text(
                        'Log In',
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
      ),
    );
  }
}
