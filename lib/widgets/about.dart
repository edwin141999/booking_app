import 'package:booking_app/styles/fonts/fonts_view.dart';
import 'package:flutter/material.dart';

class About extends StatelessWidget {
  const About({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: const [
        Text('About Trip', style: FontSelect.kTitle26),
        SizedBox(height: 15),
        Text(
            "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an",
            style: FontSelect.kSubtitle16),
      ],
    );
  }
}
