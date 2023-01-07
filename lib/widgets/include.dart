import 'package:booking_app/models/include_model.dart';
import 'package:booking_app/styles/fonts/fonts_view.dart';
import 'package:booking_app/widgets/fly_details.dart';
import 'package:booking_app/widgets/hotel_details.dart';
import 'package:flutter/material.dart';

class Include extends StatelessWidget {
  const Include({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            SizedBox(
              width: MediaQuery.of(context).size.width * 0.8,
              height: 70,
              child: ListView.separated(
                scrollDirection: Axis.horizontal,
                itemCount: includeList.length,
                separatorBuilder: (BuildContext context, int index) {
                  return const SizedBox(width: 40);
                },
                itemBuilder: (BuildContext context, int index) {
                  return Column(
                    children: [
                      InkWell(
                        onTap: () {
                          (index == 0)
                              ? showModalBottomSheet<void>(
                                  context: context,
                                  shape: const RoundedRectangleBorder(
                                    borderRadius: BorderRadius.vertical(
                                        top: Radius.circular(40)),
                                  ),
                                  isScrollControlled: true,
                                  backgroundColor: Colors.white,
                                  builder: (BuildContext context) {
                                    return SizedBox(
                                        height:
                                            MediaQuery.of(context).size.height *
                                                0.5,
                                        child: const FlyDetails());
                                  },
                                )
                              : (index == 1)
                                  ? showModalBottomSheet<void>(
                                      context: context,
                                      shape: const RoundedRectangleBorder(
                                        borderRadius: BorderRadius.vertical(
                                            top: Radius.circular(40)),
                                      ),
                                      backgroundColor: Colors.white,
                                      isScrollControlled: true,
                                      builder: (BuildContext context) {
                                        return SizedBox(
                                            height: MediaQuery.of(context)
                                                    .size
                                                    .height *
                                                0.55,
                                            child: const HotelDetails());
                                      },
                                    )
                                  : null;
                        },
                        child: CircleAvatar(
                          backgroundColor: Colors.grey[200],
                          child: Icon(includeList[index].icon,
                              color: Colors.black, size: 20),
                        ),
                      ),
                      const SizedBox(height: 10),
                      Text(includeList[index].text, style: FontSelect.kBody16)
                    ],
                  );
                },
              ),
            ),
          ],
        ),
        const SizedBox(height: 30),
        Row(
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(30),
              child: Image.asset('assets/details/image1.jpg',
                  fit: BoxFit.cover, width: 200, height: 130),
            ),
            const Spacer(),
            SizedBox(
              height: 130,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  ClipRRect(
                    borderRadius: BorderRadius.circular(20),
                    child: Image.asset('assets/details/image2.jpg',
                        fit: BoxFit.cover, width: 140, height: 60),
                  ),
                  ClipRRect(
                    borderRadius: BorderRadius.circular(20),
                    child: Image.asset('assets/details/image3.jpg',
                        fit: BoxFit.cover, width: 140, height: 60),
                  ),
                ],
              ),
            )
          ],
        ),
        const SizedBox(height: 20),
        TextButton(
          onPressed: () {},
          style: TextButton.styleFrom(
            textStyle: FontSelect.kBtnText16.copyWith(fontSize: 18),
            backgroundColor: Colors.grey[200],
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(30)),
            foregroundColor: Colors.black,
            minimumSize: const Size(double.infinity, 50),
          ),
          child: const Text('See all 156 Photos'),
        ),
      ],
    );
  }
}
