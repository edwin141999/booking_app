import 'package:booking_app/models/flybottom_model.dart';
import 'package:booking_app/styles/colors/colors_view.dart';
import 'package:booking_app/styles/fonts/fonts_view.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class FlyBottom extends StatelessWidget {
  const FlyBottom({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: const BorderRadius.only(
        topLeft: Radius.circular(30),
        topRight: Radius.circular(30),
      ),
      child: Padding(
        padding: const EdgeInsets.only(top: 10),
        child: Scaffold(
          appBar: AppBar(
            title: const Text('Flight Details', style: FontSelect.kTitle26),
            centerTitle: true,
            backgroundColor: Colors.white,
            foregroundColor: Colors.black,
            automaticallyImplyLeading: false,
            elevation: 0,
            actions: [
              Padding(
                padding: const EdgeInsets.only(right: 20),
                child: CircleAvatar(
                  backgroundColor: Colors.grey[200],
                  foregroundColor: Colors.black,
                  child: IconButton(
                    onPressed: () {},
                    icon: const Icon(FontAwesomeIcons.xmark),
                  ),
                ),
              ),
            ],
          ),
          backgroundColor: Colors.white,
          body: SingleChildScrollView(
            physics: const BouncingScrollPhysics(),
            child: Column(
              children: List.generate(flyBottomList.length, (index) {
                return Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: Card(
                    shape: RoundedRectangleBorder(
                      borderRadius: const BorderRadius.all(Radius.circular(30)),
                      side: BorderSide(
                          color: ColorSelect.kTextSecondary.withOpacity(.5),
                          width: 1.2),
                    ),
                    child: Container(
                      padding: const EdgeInsets.all(20),
                      width: double.infinity,
                      height: 160,
                      child: Column(
                        children: [
                          Text(
                            '${flyBottomList[index].porcent}% on time',
                            style: FontSelect.kBody16.copyWith(
                                color: ColorSelect.kColorPrimary,
                                fontWeight: FontWeight.w400),
                          ),
                          const Spacer(),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(flyBottomList[index].begin,
                                      style: FontSelect.kBody18),
                                  const Text('Larkow',
                                      style: FontSelect.kSubtitle16)
                                ],
                              ),
                              Column(
                                children: const [
                                  Icon(Icons.flight,
                                      color: ColorSelect.kColorPrimary),
                                  Text('2h 40m', style: FontSelect.kSubtitle16),
                                ],
                              ),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(flyBottomList[index].finish,
                                      style: FontSelect.kBody18),
                                  const Text('Goa',
                                      style: FontSelect.kSubtitle16)
                                ],
                              ),
                            ],
                          ),
                          const Spacer(),
                          Row(
                            children: [
                              const Spacer(),
                              RichText(
                                text: const TextSpan(
                                  children: [
                                    TextSpan(
                                        text: '\$150 ',
                                        style: FontSelect.kTitle22),
                                    TextSpan(
                                        text: '/ person',
                                        style: FontSelect.kSubtitle16),
                                  ],
                                ),
                              ),
                              const SizedBox(width: 50),
                              Container(
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(100),
                                  border: Border.all(
                                      color: ColorSelect.kTextSecondary
                                          .withOpacity(.5)),
                                ),
                                padding: const EdgeInsets.all(10),
                                child: const Icon(FontAwesomeIcons.bookmark,
                                    size: 14),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                );
              }),
            ),
          ),
        ),
      ),
    );
  }
}
