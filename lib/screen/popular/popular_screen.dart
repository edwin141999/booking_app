import 'package:booking_app/styles/fonts/fonts_view.dart';
import 'package:booking_app/widgets/button_back.dart';
import 'package:booking_app/widgets/card_package.dart';
import 'package:booking_app/widgets/container_image.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

class PopularScreen extends StatelessWidget {
  const PopularScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final arguments = ModalRoute.of(context)!.settings.arguments;
    final userData = arguments as UserCredential;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        actions: [ContainerImage(userData: userData)],
        title: const BtnBack(),
        automaticallyImplyLeading: false,
      ),
      backgroundColor: Colors.white,
      body: SafeArea(
        minimum: const EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text('Popular Packages', style: FontSelect.kTitle26),
            const SizedBox(height: 5),
            Row(
              children: [
                const Text('Result found (128)', style: FontSelect.kSubtitle16),
                const Spacer(),
                Text('Sort By',
                    style: FontSelect.kTitle20.copyWith(fontSize: 18)),
                const Icon(Icons.filter_list, color: Colors.black),
              ],
            ),
            const SizedBox(height: 20),
            SizedBox(
              height: MediaQuery.of(context).size.height * .745,
              child: ListView.separated(
                itemCount: 5,
                separatorBuilder: (BuildContext context, int index) =>
                    const SizedBox(height: 10),
                itemBuilder: (BuildContext context, int index) {
                  return const CardPackage(width: double.infinity);
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
