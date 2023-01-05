import 'package:booking_app/styles/fonts/fonts_view.dart';
import 'package:flutter/material.dart';

class CardTopPackage extends StatelessWidget {
  const CardTopPackage(
      {Key? key,
      required this.image,
      required this.country,
      required this.city})
      : super(key: key);

  final String image, country, city;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 230,
      padding: const EdgeInsets.all(10),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(30),
        color: Colors.grey[100],
      ),
      child: Row(
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(30),
            child: Image.asset(image, height: 80, width: 80, fit: BoxFit.cover),
          ),
          const SizedBox(width: 15),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(city, style: FontSelect.kTitle22),
              Text(country, style: FontSelect.kSubtitle16),
              Row(
                children: const [
                  Icon(Icons.star, color: Colors.yellow, size: 18),
                  Text('4.5', style: FontSelect.kSubtitle16),
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }
}
