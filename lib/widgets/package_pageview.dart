import 'package:booking_app/models/card_package_model.dart';
import 'package:booking_app/styles/fonts/fonts_view.dart';
import 'package:booking_app/widgets/card_package.dart';
import 'package:booking_app/widgets/packages.dart';
import 'package:booking_app/widgets/top_packages.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

class PackagePageView extends StatefulWidget {
  const PackagePageView({Key? key, required this.userData}) : super(key: key);
  final UserCredential userData;

  @override
  State<PackagePageView> createState() => _PackagePageViewState();
}

class _PackagePageViewState extends State<PackagePageView> {
  final PageController _pageController = PageController(initialPage: 0);
  int activePage = 3;

  @override
  void initState() {
    activePage = 3;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      physics: const BouncingScrollPhysics(),
      child: Column(
        children: [
          // PACKAGES
          const SizedBox(height: 20),
          Row(
            children: [
              const Text('101 Packages', style: FontSelect.kSubtitle16),
              const Spacer(),
              Text('See all',
                  style: FontSelect.kSubtitle18.copyWith(
                      color: Colors.blue, fontWeight: FontWeight.w700)),
            ],
          ),
          const SizedBox(height: 20),
          const Packages(),
          // POPULAR PACKAGES
          const SizedBox(height: 20),
          Row(
            children: [
              const Text('Popular Packages', style: FontSelect.kTitle22),
              const Spacer(),
              TextButton(
                style: TextButton.styleFrom(
                    padding: const EdgeInsets.all(0),
                    elevation: 0,
                    side: const BorderSide(color: Colors.transparent)),
                onPressed: () {
                  Navigator.pushNamed(context, '/popular',
                      arguments: widget.userData);
                },
                child: Text('See all',
                    style: FontSelect.kSubtitle18.copyWith(
                        color: Colors.blue, fontWeight: FontWeight.w700)),
              )
            ],
          ),
          const SizedBox(height: 10),
          SizedBox(
            width: double.infinity,
            height: 200,
            child: PageView.builder(
              physics: const BouncingScrollPhysics(),
              itemCount: reversePackage.length,
              pageSnapping: true,
              controller: _pageController,
              onPageChanged: (int index) {
                setState(() {
                  activePage = index % 3;
                });
              },
              itemBuilder: (BuildContext context, int index) {
                double margin = index == activePage ? 0 : 10;
                return AnimatedContainer(
                  duration: const Duration(milliseconds: 500),
                  curve: Curves.easeOutCubic,
                  margin: EdgeInsets.symmetric(horizontal: margin),
                  child: CardPackage(
                    width: double.infinity,
                    description: '2 days 3 night full package',
                    save: true,
                    image: reversePackage[index].image,
                    place: reversePackage[index].place,
                  ),
                );
              },
            ),
          ),
          const SizedBox(height: 10),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: List.generate(reversePackage.length, (index) {
              return Container(
                margin: const EdgeInsets.all(3),
                width: activePage == index ? 30 : 10,
                height: 5,
                decoration: BoxDecoration(
                  color: activePage == index ? Colors.blue : Colors.grey[200],
                  borderRadius: BorderRadius.circular(50),
                ),
              );
            }),
          ),
          // TOP PACKAGES
          const SizedBox(height: 20),
          Row(
            children: [
              const Text('Top Packages', style: FontSelect.kTitle22),
              const Spacer(),
              Text('See all',
                  style: FontSelect.kSubtitle18.copyWith(
                      color: Colors.blue, fontWeight: FontWeight.w700)),
            ],
          ),
          const SizedBox(height: 20),
          const TopPackages(),
          const SizedBox(height: 30)
        ],
      ),
    );
  }
}
