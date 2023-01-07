import 'package:booking_app/widgets/title_modal.dart';
import 'package:flutter/material.dart';

// PENDIENTE X HACER
class CheckAvailability extends StatelessWidget {
  const CheckAvailability({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const ClipRRect(
      borderRadius: BorderRadius.vertical(top: Radius.circular(40)),
      child: Padding(
        padding: EdgeInsets.only(top: 10),
        child: Scaffold(
          appBar: PreferredSize(
              preferredSize: Size.fromHeight(50),
              child: TitleModal(title: 'Check Availibity')),
          backgroundColor: Colors.white,
        ),
      ),
    );
  }
}
