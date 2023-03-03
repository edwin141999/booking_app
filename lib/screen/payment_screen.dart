import 'package:booking_app/styles/fonts/fonts_view.dart';
import 'package:booking_app/widgets/btn_continue.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

class PaymentScreen extends StatelessWidget {
  const PaymentScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final arguments = ModalRoute.of(context)!.settings.arguments;
    final userData = arguments as UserCredential;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        automaticallyImplyLeading: false,
        title: const Text('Payment', style: FontSelect.kTitle22),
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
          padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 20),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: const [
                  TypePayment(
                    img: 'assets/images/credit_card.png',
                    typePayment: 'Credit Card',
                    isSelect: true,
                  ),
                  TypePayment(
                    img: 'assets/images/paypal_logo.png',
                    typePayment: 'Paypal',
                    isSelect: false,
                  ),
                ],
              ),
              const SizedBox(height: 30),
              const InputPayment(
                title: 'Card Number',
                inputType: TextInputType.number,
              ),
              const SizedBox(height: 30),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: const [
                  SizedBox(
                    width: 150,
                    child: InputPayment(
                      title: 'EX Date',
                      inputType: TextInputType.datetime,
                    ),
                  ),
                  SizedBox(
                    width: 150,
                    child: InputPayment(
                      title: 'CVV',
                      inputType: TextInputType.number,
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 30),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: const [
                  SizedBox(
                    width: 150,
                    child: InputPayment(
                      title: 'Country',
                      inputType: TextInputType.multiline,
                    ),
                  ),
                  SizedBox(
                    width: 150,
                    child: InputPayment(
                      title: 'Zip Code',
                      inputType: TextInputType.number,
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 50),
              BtnContinue(
                btnText: 'Pay \$1,400',
                onPressed: () {
                  Navigator.pushNamed(context, '/congrats',
                      arguments: userData);
                },
              )
            ],
          ),
        ),
      ),
    );
  }
}

class InputPayment extends StatelessWidget {
  final String title;
  final TextInputType inputType;
  const InputPayment({
    Key? key,
    required this.title,
    required this.inputType,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(title, style: FontSelect.kSubtitle16),
        TextField(
          decoration: const InputDecoration(
            isDense: true,
            contentPadding: EdgeInsets.only(bottom: 10),
            focusedBorder: UnderlineInputBorder(
              borderSide: BorderSide(color: Colors.red),
            ),
          ),
          style: FontSelect.kTitle22,
          keyboardType: inputType,
        ),
      ],
    );
  }
}

class TypePayment extends StatelessWidget {
  final String img, typePayment;
  final bool isSelect;
  const TypePayment({
    Key? key,
    required this.img,
    required this.typePayment,
    required this.isSelect,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(15),
        border: Border.all(
          color: isSelect ? Colors.red : Colors.grey,
          width: 2,
        ),
      ),
      width: 170,
      height: 60,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          if (img == 'assets/images/credit_card.png')
            Image.asset(img, height: 50)
          else
            Image.asset(img, height: 30),
          Padding(
            padding: const EdgeInsets.only(right: 10.0),
            child: Text(typePayment, style: FontSelect.kSubtitle18),
          ),
        ],
      ),
    );
  }
}
