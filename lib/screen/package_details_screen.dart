import 'package:booking_app/screen/info_playa.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class PackageDetailsScreen extends StatelessWidget {
  const PackageDetailsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Stack(
          children: [
            const FondoPlaya(),
            const InfoPlaya(),
            Scaffold(
              backgroundColor: Colors.transparent,
              appBar: AppBar(
                backgroundColor: Colors.transparent,
                elevation: 0,
                leading: IconButton(
                  onPressed: () => Navigator.pop(context),
                  icon: const Icon(Icons.arrow_back_ios),
                ),
                actions: const [
                  Center(child: FaIcon(FontAwesomeIcons.bookmark))
                ],
              ),
            ),
          ],
        ),
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
