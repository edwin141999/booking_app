import 'package:booking_app/widget/button_back.dart';
import 'package:flutter/material.dart';

class PopularScreen extends StatelessWidget {
  const PopularScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        title: const BtnBack(),
        automaticallyImplyLeading: false,
      ),
      body: const SafeArea(child: Text('Hola mundo')),
    );
  }
}
