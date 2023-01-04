import 'package:booking_app/styles/fonts/fonts_view.dart';
import 'package:flutter/material.dart';

class CardTopPackage extends StatelessWidget {
  const CardTopPackage({
    Key? key,
  }) : super(key: key);

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
          Container(
            height: 80,
            width: 80,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(30),
              image: const DecorationImage(
                image: NetworkImage(
                    'https://www.cinqueterre.eu.com/images/stories/web/manarola/manarola-cinque-terre-1200.jpg'),
                fit: BoxFit.cover,
              ),
            ),
          ),
          const SizedBox(width: 15),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text('Barcelona', style: FontSelect.kTitle22),
              const Text('Spain', style: FontSelect.kSubtitle16),
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
