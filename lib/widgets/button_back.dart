import 'package:booking_app/styles/colors/colors_view.dart';
import 'package:flutter/material.dart';

class BtnBack extends StatelessWidget {
  const BtnBack({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(100),
        border: Border.all(color: ColorSelect.kTextSecondary.withOpacity(.5)),
      ),
      child: IconButton(
        onPressed: () {
          Navigator.pop(context);
        },
        icon:
            const Icon(Icons.arrow_back_ios, color: ColorSelect.kTextSecondary),
        padding: const EdgeInsets.only(left: 10),
      ),
    );
  }
}
