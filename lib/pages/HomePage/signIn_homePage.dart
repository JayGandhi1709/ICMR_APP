import 'package:flutter/material.dart';

class SigninHomepage extends StatefulWidget {
  const SigninHomepage({super.key});

  @override
  State<SigninHomepage> createState() => _SigninHomepageState();
}

class _SigninHomepageState extends State<SigninHomepage> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            'AIM :',
            style: TextStyle(
              fontSize: MediaQuery.of(context).size.width * 0.025,
              fontWeight: FontWeight.bold,
              color: const Color.fromRGBO(21, 34, 102, 1),
              fontFamily: "poppins",
            ),
          ),
          const SizedBox(height: 10),
          Text(
            'To develop a scalable model of high quality patient-centric integrated emergency care system to achieve 80% population coverage in the selected districts of India.',
            style: TextStyle(
              fontSize: MediaQuery.of(context).size.width * 0.02,
              fontWeight: FontWeight.bold,
              color: const Color.fromRGBO(84, 78, 78, 1),
              fontFamily: "poppins",
            ),
          ),
        ],
      ),
    );
  }
}
