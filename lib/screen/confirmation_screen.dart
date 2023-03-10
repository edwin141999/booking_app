import 'package:booking_app/styles/fonts/fonts_view.dart';
import 'package:booking_app/widgets/btn_continue.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

class ConfirmationScreen extends StatelessWidget {
  const ConfirmationScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final arguments = ModalRoute.of(context)!.settings.arguments;
    final userData = arguments as UserCredential;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        automaticallyImplyLeading: false,
        title: const Text('Confirmation', style: FontSelect.kTitle22),
        centerTitle: true,
        leading: CircleAvatar(
          backgroundColor: Colors.white,
          child: IconButton(
            onPressed: () => Navigator.pop(context),
            icon: const Icon(Icons.arrow_back_ios, color: Colors.black),
            padding: const EdgeInsets.only(left: 10),
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Padding(
                padding: EdgeInsets.only(top: 10),
                child: Text('Your Trip', style: FontSelect.kTitle26),
              ),
              const InfoConfirmation(
                  title: 'Date:', subtitle: '10-14 May, 2021', isEdit: true),
              const InfoConfirmation(
                  title: 'Place:', subtitle: 'Italy, Manarola', isEdit: false),
              const InfoConfirmation(
                  title: 'Flight:', subtitle: 'Alaska Airline', isEdit: true),
              const InfoConfirmation(
                  title: 'Hotel:', subtitle: 'Water Hotel', isEdit: true),
              const InfoConfirmation(
                title: 'Gueste:',
                subtitle: '2 Gueste',
                isEdit: false,
                isGuest: true,
              ),
              const Divider(color: Colors.black),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 20),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Text('Total:', style: FontSelect.kSubtitle16),
                    Text(
                      '\$ 1,400',
                      style: FontSelect.kTitle20.copyWith(
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                  ],
                ),
              ),
              Center(
                child: BtnContinue(
                  btnText: 'Continue',
                  onPressed: () {
                    Navigator.pushNamed(context, '/payment',
                        arguments: userData);
                  },
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}

class InfoConfirmation extends StatelessWidget {
  final String title, subtitle;
  final bool isEdit, isGuest;

  const InfoConfirmation({
    Key? key,
    required this.title,
    required this.subtitle,
    required this.isEdit,
    this.isGuest = false,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 25),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(title, style: FontSelect.kSubtitle18),
                  Text(
                    subtitle,
                    style: FontSelect.kTitle20.copyWith(
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                ],
              ),
              if (isEdit)
                Text(
                  'Edit',
                  style: FontSelect.kSubtitle18.copyWith(
                    color: Colors.red,
                    decoration: TextDecoration.underline,
                    fontWeight: FontWeight.w700,
                  ),
                ),
              if (isGuest)
                Row(
                  children: const [
                    CircleAvatar(
                      backgroundColor: Colors.transparent,
                      child: Text('-', style: FontSelect.kSubtitle16),
                    ),
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: 10),
                      child: Text('2', style: FontSelect.kTitle20),
                    ),
                    CircleAvatar(
                      backgroundColor: Colors.transparent,
                      child: Text('+', style: FontSelect.kSubtitle16),
                    ),
                  ],
                ),
            ],
          ),
          if (isGuest)
            Padding(
              padding: const EdgeInsets.only(top: 20),
              child: Row(
                children: [
                  const Padding(
                    padding: EdgeInsets.only(right: 10),
                    child: Icon(Icons.info, color: Colors.grey, size: 20),
                  ),
                  Text(
                    'Every person you add it will be \$ 700',
                    style: FontSelect.kSubtitle16.copyWith(fontSize: 14),
                  ),
                ],
              ),
            ),
        ],
      ),
    );
  }
}
