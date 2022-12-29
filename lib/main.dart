import 'package:booking_app/screen/welcome/log_in_password.dart';
import 'package:booking_app/screen/welcome/welcome_screen.dart';
import 'package:booking_app/splash/splash_view.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Flutter Demo',
        theme: ThemeData(fontFamily: 'Rubik'),
        home: const SplashView(),
        debugShowCheckedModeBanner: false,
        routes: {
          '/welcome': (context) => const WelcomeScreen(),
          '/password': (context) => const LogInPassword(),
        });
  }
}
