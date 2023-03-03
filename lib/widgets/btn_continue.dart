import 'package:booking_app/styles/colors/colors_view.dart';
import 'package:booking_app/styles/fonts/fonts_view.dart';
import 'package:flutter/material.dart';

class BtnContinue extends StatelessWidget {
  const BtnContinue({
    Key? key,
    required this.btnText,
    required this.onPressed,
  }) : super(key: key);
  final String btnText;
  final Function() onPressed;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: MediaQuery.of(context).size.width * 0.8,
      height: 55,
      child: OutlinedButton(
        onPressed: onPressed,
        style: OutlinedButton.styleFrom(
          backgroundColor: ColorSelect.kColorPrimary,
          side: const BorderSide(color: ColorSelect.kColorPrimary),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(50),
          ),
        ),
        child: Text(btnText, style: FontSelect.kBtnText20White),
      ),
    );
  }
}
