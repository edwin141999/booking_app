import 'package:booking_app/styles/colors/colors_view.dart';
import 'package:booking_app/styles/fonts/fonts_view.dart';
import 'package:flutter/material.dart';

class TotalCost extends StatelessWidget {
  const TotalCost({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.bottomCenter,
      child: Container(
        width: double.infinity,
        height: 100,
        padding: const EdgeInsets.all(20),
        decoration: const BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.only(
              topLeft: Radius.circular(30), topRight: Radius.circular(30)),
          boxShadow: [
            BoxShadow(
                color: Colors.black12, blurRadius: 10, offset: Offset(0, -5)),
          ],
        ),
        child: Row(
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text('Total cost', style: FontSelect.kSubtitle16),
                RichText(
                  text: TextSpan(
                    children: [
                      TextSpan(
                          text: '\$770 ',
                          style: FontSelect.kTitle26.copyWith(fontSize: 30)),
                      TextSpan(
                          text: '/ person',
                          style: FontSelect.kSubtitle18
                              .copyWith(color: ColorSelect.kTextSecondary)),
                    ],
                  ),
                ),
              ],
            ),
            const Spacer(),
            ElevatedButton(
              onPressed: () {},
              style: ElevatedButton.styleFrom(
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(30)),
                backgroundColor: ColorSelect.kColorPrimary,
                minimumSize: const Size(150, 50),
                elevation: 0,
                textStyle: FontSelect.kBtnText16,
              ),
              child: const Text('Book Now'),
            ),
          ],
        ),
      ),
    );
  }
}
