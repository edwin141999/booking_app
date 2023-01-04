import 'package:booking_app/styles/colors/colors_view.dart';
import 'package:booking_app/styles/fonts/fonts_view.dart';
import 'package:booking_app/widget/button_back.dart';
import 'package:flutter/material.dart';

class Verification extends StatelessWidget {
  const Verification({Key? key}) : super(key: key);

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
                  children: [
                    const Text("Verification", style: FontSelect.kTitle26),
                    SizedBox(
                      width: MediaQuery.of(context).size.width * 0.7,
                      child: const Text(
                        "Please enter the code we sent to your email",
                        style: FontSelect.kSubtitle16,
                        textAlign: TextAlign.center,
                      ),
                    ),
                  ],
                ),
                Container(
                  width: MediaQuery.of(context).size.width,
                  height: MediaQuery.of(context).size.height * .1,
                  alignment: Alignment.center,
                  child: ListView.builder(
                    itemCount: 4,
                    padding: const EdgeInsets.symmetric(vertical: 10),
                    scrollDirection: Axis.horizontal,
                    shrinkWrap: true,
                    itemBuilder: (BuildContext context, int index) {
                      return Padding(
                        padding: const EdgeInsets.only(right: 15),
                        child: SizedBox(
                          width: MediaQuery.of(context).size.width * 0.15,
                          child: const TextField(
                            style: FontSelect.kBtnText16,
                            textAlign: TextAlign.center,
                            keyboardType: TextInputType.number,
                            textInputAction: TextInputAction.next,
                            decoration: InputDecoration(
                              border: OutlineInputBorder(
                                borderRadius:
                                    BorderRadius.all(Radius.circular(100)),
                              ),
                              focusedBorder: OutlineInputBorder(
                                borderRadius:
                                    BorderRadius.all(Radius.circular(100)),
                                borderSide: BorderSide(
                                    color: ColorSelect.kColorSecondary),
                              ),
                            ),
                          ),
                        ),
                      );
                    },
                  ),
                ),
                Row(mainAxisAlignment: MainAxisAlignment.center, children: [
                  const Text("I don't receive the code! ",
                      style: FontSelect.kSubtitle16),
                  GestureDetector(
                    onTap: () {
                      // Navigator.pushNamed(context, '/signup');
                    },
                    child: const Text(
                      'Please Resend',
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
