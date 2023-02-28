import 'package:booking_app/firebase_options.dart';
import 'package:booking_app/screen/confirmation_screen.dart';
import 'package:booking_app/screen/forget_password_screen.dart';
import 'package:booking_app/screen/home_screen.dart';
import 'package:booking_app/screen/package_details_screen.dart';
import 'package:booking_app/screen/password_screen.dart';
import 'package:booking_app/screen/popular_screen.dart';
import 'package:booking_app/screen/sign_up_screen.dart';
import 'package:booking_app/screen/verification_screen.dart';
import 'package:booking_app/screen/welcome_screen.dart';
import 'package:booking_app/splash/splash_view.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';

void main() async {
  await dotenv.load(fileName: '.env');
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
          '/password': (context) => const PasswordScreen(),
          '/signup': (context) => const SignUpScreen(),
          '/forgetpassword': (context) => const ForgetPasswordScreen(),
          '/verification': (context) => const VerificationScreen(),
          '/home': (context) => const HomeScreen(),
          '/popular': (context) => const PopularScreen(),
          '/details': (context) => const PackageDetailsScreen(),
          '/confirmation': (context) => const ConfirmationScreen(),
        });
  }
}
