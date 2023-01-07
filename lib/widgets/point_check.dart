import 'package:booking_app/styles/colors/colors_view.dart';
import 'package:booking_app/styles/fonts/fonts_view.dart';
import 'package:booking_app/widgets/check_availability.dart';
import 'package:flutter/material.dart';

class PointCheck extends StatelessWidget {
  const PointCheck({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Stack(
          children: const [
            CircleAvatar(
                backgroundImage: AssetImage('assets/images/profile1.jpg'),
                radius: 15),
            Padding(
                padding: EdgeInsets.only(left: 15),
                child: ImageInfo(image: 'assets/images/profile2.jpg')),
            Padding(
                padding: EdgeInsets.only(left: 35),
                child: ImageInfo(image: 'assets/images/profile3.jpg')),
            Padding(
                padding: EdgeInsets.only(left: 55),
                child: ImageInfo(image: 'assets/images/profile4.jpg')),
            Padding(
                padding: EdgeInsets.only(left: 75),
                child: ImageInfo(image: 'assets/images/profile5.jpg')),
          ],
        ),
        const SizedBox(width: 10),
        const Text('4.5', style: FontSelect.kSubtitle16),
        const Spacer(),
        OutlinedButton(
          onPressed: () {
            showModalBottomSheet<void>(
              context: context,
              shape: const RoundedRectangleBorder(
                borderRadius: BorderRadius.vertical(top: Radius.circular(40)),
              ),
              isScrollControlled: true,
              backgroundColor: Colors.white,
              builder: (BuildContext context) {
                return SizedBox(
                  height: MediaQuery.of(context).size.height * 0.85,
                  child: const CheckAvailability(),
                );
              },
            );
          },
          style: OutlinedButton.styleFrom(
            backgroundColor: ColorSelect.kColorPrimary,
            foregroundColor: Colors.white,
            side: const BorderSide(color: ColorSelect.kColorPrimary),
            elevation: 0,
            minimumSize: const Size(165, 45),
            shape: const RoundedRectangleBorder(
              borderRadius: BorderRadius.all(Radius.circular(20)),
            ),
          ),
          child: const Text('Check Availability'),
        ),
      ],
    );
  }
}

class ImageInfo extends StatelessWidget {
  const ImageInfo({Key? key, this.image}) : super(key: key);
  final String? image;

  @override
  Widget build(BuildContext context) {
    return CircleAvatar(backgroundImage: AssetImage(image!), radius: 15);
  }
}
