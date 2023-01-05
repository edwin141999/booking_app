import 'package:booking_app/models/card_package_model.dart';
import 'package:booking_app/widgets/card_package.dart';
import 'package:flutter/material.dart';

class Packages extends StatelessWidget {
  const Packages({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 240,
      child: ListView.separated(
        itemCount: packages.length,
        physics: const BouncingScrollPhysics(),
        scrollDirection: Axis.horizontal,
        separatorBuilder: (BuildContext context, int index) {
          return const SizedBox(width: 25);
        },
        itemBuilder: (BuildContext context, int index) {
          return CardPackage(
              width: 220,
              image: packages[index].image,
              place: packages[index].place);
        },
      ),
    );
  }
}
