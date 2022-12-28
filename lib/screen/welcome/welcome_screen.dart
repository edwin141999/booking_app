import 'package:booking_app/screen/welcome/log_in.dart';
import 'package:booking_app/screen/welcome/onboarding.dart';
import 'package:flutter/material.dart';

class WelcomeScreen extends StatefulWidget {
  const WelcomeScreen({Key? key}) : super(key: key);

  @override
  State<WelcomeScreen> createState() => _WelcomeScreenState();
}

class _WelcomeScreenState extends State<WelcomeScreen> {
  @override
  Widget build(BuildContext context) {
    final PageController controller = PageController(initialPage: 0);
    return PageView(
      controller: controller,
      children: [
        OnBoarding(),
        const LogIn(),
      ],
    );
  }
}
