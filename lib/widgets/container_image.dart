import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

class ContainerImage extends StatelessWidget {
  const ContainerImage({
    Key? key,
    required this.userData,
  }) : super(key: key);

  final UserCredential userData;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: GestureDetector(
        onTap: () {
          FirebaseAuth.instance.signOut();
          Navigator.pushNamed(context, '/welcome');
        },
        child: Container(
          width: 40,
          height: 40,
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            image:
                DecorationImage(image: NetworkImage(userData.user!.photoURL!)),
          ),
        ),
      ),
    );
  }
}
