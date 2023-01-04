import 'package:booking_app/widgets/card_top_package.dart';
import 'package:flutter/material.dart';

class TopPackages extends StatelessWidget {
  const TopPackages({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 95,
      child: ListView.separated(
        physics: const BouncingScrollPhysics(),
        scrollDirection: Axis.horizontal,
        itemCount: 3,
        separatorBuilder: (BuildContext context, int index) {
          return const SizedBox(width: 20);
        },
        itemBuilder: (BuildContext context, int index) {
          return const CardTopPackage();
        },
      ),
    );
  }
}
