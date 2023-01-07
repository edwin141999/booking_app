import 'package:booking_app/models/fly_details_model.dart';
import 'package:booking_app/styles/colors/colors_view.dart';
import 'package:booking_app/styles/fonts/fonts_view.dart';
import 'package:booking_app/widgets/title_modal.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class FlyDetails extends StatelessWidget {
  const FlyDetails({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: const BorderRadius.vertical(top: Radius.circular(40)),
      child: Padding(
        padding: const EdgeInsets.only(top: 10),
        child: Scaffold(
          appBar: const PreferredSize(
              preferredSize: Size.fromHeight(50),
              child: TitleModal(title: 'Flight Details')),
          backgroundColor: Colors.white,
          body: SingleChildScrollView(
            physics: const BouncingScrollPhysics(),
            child: Column(
              children: List.generate(flyDetailsList.length, (index) {
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
                            '${flyDetailsList[index].porcent}% on time',
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
                                  Text(flyDetailsList[index].begin,
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
                                  Text(flyDetailsList[index].finish,
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
