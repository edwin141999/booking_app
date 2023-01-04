import 'package:booking_app/screen/email_screen.dart';
import 'package:booking_app/screen/social_screen.dart';
import 'package:flutter/material.dart';

class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final PageController controller = PageController(initialPage: 0);
    return PageView(
      controller: controller,
      children: [
        SocialScreen(),
        EmailScreen(controller: controller),
      ],
    );
  }
}
