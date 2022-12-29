import 'package:booking_app/styles/colors/colors_view.dart';
import 'package:booking_app/styles/fonts/fonts_view.dart';
import 'package:flutter/material.dart';

class LogInPassword extends StatefulWidget {
  const LogInPassword({Key? key}) : super(key: key);

  @override
  State<LogInPassword> createState() => _LogInPasswordState();
}

class _LogInPasswordState extends State<LogInPassword> {
  bool visiblePass = false;

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
                Navigator.pop(context);
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
                SizedBox(
                  width: MediaQuery.of(context).size.width * 0.8,
                  height: 55,
                  child: OutlinedButton(
                    onPressed: () {},
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
                const Text(
                  'Forget Password?',
                  style: TextStyle(
                      color: ColorSelect.kColorSecondary,
                      fontSize: 16,
                      fontWeight: FontWeight.w500),
                ),
              ]),
        ),
      ),
    );
  }
}
