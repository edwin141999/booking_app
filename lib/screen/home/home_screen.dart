import 'package:booking_app/styles/colors/colors_view.dart';
import 'package:booking_app/styles/fonts/fonts_view.dart';
import 'package:booking_app/widgets/card_package.dart';
import 'package:booking_app/widgets/container_image.dart';
import 'package:booking_app/widgets/packages.dart';
import 'package:booking_app/widgets/top_packages.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);
  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  var categories = ['Packages', 'Flights', 'Places', 'Hotels'];
  int index = 0;
  final PageController _pageController = PageController(initialPage: 0);
  int activePage = 0;
  final ScrollController _scrollController =
      ScrollController(initialScrollOffset: 0);
  int activeScroll = 0;

  @override
  Widget build(BuildContext context) {
    final arguments = ModalRoute.of(context)!.settings.arguments;
    final userData = arguments as UserCredential;
    return Scaffold(
      appBar: AppBar(
        actions: [
          ContainerImage(userData: userData),
        ],
        title: SizedBox(
          width: MediaQuery.of(context).size.width * 0.8,
          height: 50,
          child: Row(children: const [
            FaIcon(FontAwesomeIcons.locationDot, color: Colors.black),
            SizedBox(width: 10),
            Text('New York,USA', style: FontSelect.kTitle22),
          ]),
        ),
        elevation: 0,
        backgroundColor: Colors.white,
        automaticallyImplyLeading: false,
      ),
      backgroundColor: Colors.white,
      body: SafeArea(
        minimum: const EdgeInsets.symmetric(horizontal: 20),
        child: SingleChildScrollView(
          child: Column(
            children: [
              const SizedBox(height: 20),
              SizedBox(
                width: double.infinity,
                height: MediaQuery.of(context).size.height * .055,
                child: ListView.separated(
                    itemCount: categories.length,
                    scrollDirection: Axis.horizontal,
                    controller: _scrollController,
                    padding: const EdgeInsets.symmetric(horizontal: 10),
                    separatorBuilder: (BuildContext context, int index) {
                      return const SizedBox(width: 32);
                    },
                    itemBuilder: (BuildContext context, int index) {
                      return Column(
                        children: [
                          GestureDetector(
                            onTap: () {
                              setState(() {
                                activeScroll = index;
                              });
                            },
                            child: Text(categories[index],
                                style: FontSelect.kSubtitle16.copyWith(
                                  color: activeScroll == index
                                      ? Colors.red
                                      : ColorSelect.kTextSecondary,
                                )),
                          ),
                          Container(
                            margin: const EdgeInsets.all(3),
                            width: 20,
                            height: 7,
                            decoration: BoxDecoration(
                              color: activeScroll == index
                                  ? Colors.red
                                  : Colors.transparent,
                              borderRadius:
                                  const BorderRadius.all(Radius.circular(50)),
                            ),
                          ),
                        ],
                      );
                    }),
              ),
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
                  GestureDetector(
                    onTap: () {
                      Navigator.pushNamed(context, '/popular',
                          arguments: userData);
                    },
                    child: Text('See all',
                        style: FontSelect.kSubtitle18.copyWith(
                            color: Colors.blue, fontWeight: FontWeight.w700)),
                  ),
                ],
              ),
              const SizedBox(height: 20),
              SizedBox(
                width: double.infinity,
                height: 200,
                child: PageView.builder(
                  itemCount: 3,
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
                      child: const CardPackage(
                        width: double.infinity,
                        description: '2 days 3 night full package',
                        save: true,
                      ),
                    );
                  },
                ),
              ),
              const SizedBox(height: 10),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: List.generate(3, (index) {
                  return Container(
                    margin: const EdgeInsets.all(3),
                    width: activePage == index ? 30 : 10,
                    height: 5,
                    decoration: BoxDecoration(
                      color:
                          activePage == index ? Colors.blue : Colors.grey[200],
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
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: const [
          BottomNavigationBarItem(
              icon: FaIcon(FontAwesomeIcons.house), label: 'Home'),
          BottomNavigationBarItem(
              icon: FaIcon(FontAwesomeIcons.compass), label: 'My Trip'),
          BottomNavigationBarItem(
              icon: FaIcon(FontAwesomeIcons.magnifyingGlass), label: 'Search'),
          BottomNavigationBarItem(
              icon: FaIcon(FontAwesomeIcons.bookmark), label: 'Saved'),
          BottomNavigationBarItem(
              icon: FaIcon(FontAwesomeIcons.gear), label: 'Settings')
        ],
        currentIndex: index,
        selectedItemColor: ColorSelect.kColorPrimary,
        unselectedItemColor: Colors.grey,
        showUnselectedLabels: true,
        type: BottomNavigationBarType.fixed,
        iconSize: 22,
        elevation: 1,
        onTap: (index) {
          setState(() {
            this.index = index;
          });
        },
      ),
    );
  }
}
