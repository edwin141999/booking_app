import 'package:booking_app/firebase_options.dart';
import 'package:booking_app/screen/home/home_screen.dart';
import 'package:booking_app/screen/welcome/forget_password.dart';
import 'package:booking_app/screen/welcome/log_in_password.dart';
import 'package:booking_app/screen/welcome/sign_up.dart';
import 'package:booking_app/screen/welcome/verification.dart';
import 'package:booking_app/screen/welcome/welcome_screen.dart';
import 'package:booking_app/splash/splash_view.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(options: DefaultFirebaseOptions.currentPlatform);
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Booking App',
        theme: ThemeData(fontFamily: 'Rubik'),
        home: const SplashView(),
        debugShowCheckedModeBanner: false,
        routes: {
          '/welcome': (context) => const WelcomeScreen(),
          '/password': (context) => const LogInPassword(),
          '/signup': (context) => const SignUp(),
          '/forgetpassword': (context) => const ForgetPassword(),
          '/verification': (context) => const Verification(),
          '/home': (context) => const HomeScreen(),
        });
  }
}
