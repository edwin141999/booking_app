import 'package:booking_app/styles/colors/colors_view.dart';
import 'package:booking_app/styles/fonts/fonts_view.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class CardPackage extends StatelessWidget {
  const CardPackage(
      {super.key,
      required this.width,
      this.description = '',
      this.save = false,
      required this.image,
      required this.place});
  final double width;
  final String description;
  final bool save;
  final String image, place;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 240,
      width: width,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(50),
        image: DecorationImage(image: AssetImage(image), fit: BoxFit.cover),
      ),
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(50),
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [
              Colors.transparent,
              Colors.transparent.withOpacity(.1),
              Colors.black
            ],
          ),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Container(
              alignment: Alignment.centerRight,
              padding: const EdgeInsets.symmetric(horizontal: 10),
              child: Container(
                height: 35,
                width: 35,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(50),
                    color: Colors.white),
                child: Center(
                  child: FaIcon(FontAwesomeIcons.bookmark,
                      color: save ? ColorSelect.kColorSecondary : Colors.black,
                      size: 18),
                ),
              ),
            ),
            Expanded(
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  SizedBox(
                    width: 100,
                    height: 18,
                    child: ListView.builder(
                      itemCount: 5,
                      scrollDirection: Axis.horizontal,
                      itemBuilder: (BuildContext context, int index) {
                        return const Icon(Icons.star,
                            color: Colors.yellow, size: 18);
                      },
                    ),
                  ),
                  Text('4.5',
                      style: FontSelect.kBody16.copyWith(color: Colors.white),
                      textAlign: TextAlign.center),
                ],
              ),
            ),
            const SizedBox(height: 5),
            Align(
              alignment: Alignment.bottomLeft,
              child: Text(
                place,
                style: FontSelect.kTitle45
                    .copyWith(color: Colors.white, fontSize: 28),
                textAlign: TextAlign.left,
              ),
            ),
            if (description != '')
              Align(
                alignment: Alignment.bottomLeft,
                child: Column(
                  children: [
                    const SizedBox(height: 5),
                    Text(description,
                        style: FontSelect.kSubtitle16
                            .copyWith(color: Colors.grey[300]),
                        textAlign: TextAlign.left),
                  ],
                ),
              ),
          ],
        ),
      ),
    );
  }
}
