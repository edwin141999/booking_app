import 'package:booking_app/styles/colors/colors_view.dart';
import 'package:booking_app/widgets/info_playa.dart';
import 'package:booking_app/widgets/total_cost.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class PackageDetailsScreen extends StatelessWidget {
  const PackageDetailsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final arguments = ModalRoute.of(context)!.settings.arguments;
    final userData = arguments as UserCredential;
    return Scaffold(
      body: Stack(
        children: [
          const FondoPlaya(),
          Scaffold(
            backgroundColor: Colors.transparent,
            appBar: AppBar(
              backgroundColor: Colors.transparent,
              elevation: 0,
              automaticallyImplyLeading: false,
              title: CircleAvatar(
                backgroundColor: Colors.white,
                child: IconButton(
                  onPressed: () => Navigator.pop(context),
                  icon: const Icon(Icons.arrow_back_ios, color: Colors.black),
                  padding: const EdgeInsets.only(left: 10),
                ),
              ),
              actions: const [
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 20),
                  child: Center(
                    child: CircleAvatar(
                      backgroundColor: Colors.white,
                      child: FaIcon(FontAwesomeIcons.bookmark,
                          color: ColorSelect.kColorSecondary),
                    ),
                  ),
                ),
              ],
            ),
          ),
          InfoPlaya(userData: userData),
          const TotalCost()
        ],
      ),
    );
  }
}

class FondoPlaya extends StatelessWidget {
  const FondoPlaya({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height * 0.4,
      width: double.infinity,
      decoration: const BoxDecoration(
        image: DecorationImage(
            image: AssetImage('assets/images/playa.jpg'), fit: BoxFit.cover),
      ),
    );
  }
}
