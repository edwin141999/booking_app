import 'package:booking_app/screen/welcome/log_in_email.dart';
import 'package:booking_app/screen/welcome/onboarding.dart';
import 'package:flutter/material.dart';

class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final PageController controller = PageController(initialPage: 0);
    return PageView(
      controller: controller,
      children: [
        OnBoarding(),
        LogInEmail(controller: controller),
      ],
    );
  }
}
