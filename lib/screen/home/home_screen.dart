import 'package:booking_app/styles/fonts/fonts_view.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);
  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    final arguments = ModalRoute.of(context)!.settings.arguments;
    final userData = arguments as UserCredential;
    return Scaffold(
      appBar: AppBar(
        actions: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: CircleAvatar(
              backgroundImage: NetworkImage(userData.user!.photoURL!),
            ),
          ),
        ],
        leadingWidth: 0,
        title: Container(
          width: MediaQuery.of(context).size.width * 0.8,
          height: 50,
          padding: const EdgeInsets.symmetric(horizontal: 10),
          child: Row(children: const [
            Icon(Icons.location_on_rounded, color: Colors.black, size: 30),
            SizedBox(width: 10),
            Text('New York,USA', style: FontSelect.kTitle22),
          ]),
        ),
        elevation: 0,
        backgroundColor: Colors.white,
      ),
      backgroundColor: Colors.white,
      body: const SafeArea(
        minimum: EdgeInsets.symmetric(horizontal: 20),
        child: Center(
          child: Text('Home'),
        ),
      ),
    );
  }
}
