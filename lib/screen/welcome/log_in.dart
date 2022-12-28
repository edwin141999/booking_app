import 'package:flutter/material.dart';

class LogIn extends StatelessWidget {
  const LogIn({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            const Text("What's Your Email?"),
            const Text('Email'),
            const TextField(),
            OutlinedButton(onPressed: () {}, child: const Text('Continue')),
            const Text("Don't have an account? Sign Up"),
          ],
        ),
      ),
    );
  }
}
