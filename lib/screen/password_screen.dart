import 'package:booking_app/styles/colors/colors_view.dart';
import 'package:booking_app/styles/fonts/fonts_view.dart';
import 'package:booking_app/widgets/btn_continue.dart';
import 'package:booking_app/widgets/button_back.dart';
import 'package:flutter/material.dart';

class PasswordScreen extends StatefulWidget {
  const PasswordScreen({Key? key}) : super(key: key);

  @override
  State<PasswordScreen> createState() => _PasswordScreenState();
}

class _PasswordScreenState extends State<PasswordScreen> {
  bool visiblePass = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: ColorSelect.kBackground,
        elevation: 0,
        title: const BtnBack(),
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
                    child: const Text("Enter Password!",
                        style: FontSelect.kTitle26)),
                TextField(
                    obscureText: !visiblePass,
                    enableSuggestions: false,
                    decoration: InputDecoration(
                      suffixIcon: IconButton(
                        onPressed: () {
                          setState(() {
                            visiblePass = !visiblePass;
                          });
                        },
                        icon: Icon(
                          visiblePass ? Icons.visibility : Icons.visibility_off,
                          color: ColorSelect.kTextPrimary,
                        ),
                      ),
                      labelText: 'Password',
                      labelStyle: FontSelect.kSubtitle16,
                    ),
                    style: FontSelect.kSubtitle18),
                BtnContinue(btnText: 'Continue', onPressed: () {}),
                GestureDetector(
                  onTap: () {
                    Navigator.pushNamed(context, '/forgetpassword');
                  },
                  child: const Text(
                    'Forget Password?',
                    style: TextStyle(
                        color: ColorSelect.kColorSecondary,
                        fontSize: 16,
                        fontWeight: FontWeight.w500),
                  ),
                ),
              ]),
        ),
      ),
    );
  }
}
