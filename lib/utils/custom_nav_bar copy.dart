import 'package:flutter/material.dart';

class CustomNavBar extends StatelessWidget {
  List navItem = [
    "Home",
    "About Project",
    "Project",
    "Research Team",
    "What's New"
  ];

  CustomNavBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        InkWell(
          // onPressed: () {},
          child: Text(
            "Home",
            style: TextStyle(
              color: Colors.black,
              fontSize: MediaQuery.of(context).size.width * 0.014,
              fontWeight: FontWeight.w800,
            ),
          ),
        ),
        const SizedBox(
          width: 20,
        ),
        TextButton(
          onPressed: () {},
          child: Text(
            "About Project",
            style: TextStyle(
              color: Colors.black,
              fontSize: MediaQuery.of(context).size.width * 0.014,
              fontWeight: FontWeight.w800,
            ),
          ),
        ),
        const SizedBox(
          width: 20,
        ),
        TextButton(
          onPressed: () {},
          child: Text(
            "Project",
            style: TextStyle(
              color: Colors.black,
              fontSize: MediaQuery.of(context).size.width * 0.014,
              fontWeight: FontWeight.w800,
            ),
          ),
        ),
        const SizedBox(
          width: 20,
        ),
        TextButton(
          onPressed: () {},
          child: Text(
            "Research Team",
            style: TextStyle(
              color: Colors.black,
              fontSize: MediaQuery.of(context).size.width * 0.014,
              fontWeight: FontWeight.w800,
            ),
          ),
        ),
        const SizedBox(
          width: 20,
        ),
        TextButton(
          onPressed: () {},
          child: Text(
            "What's New",
            style: TextStyle(
              color: Colors.black,
              fontSize: MediaQuery.of(context).size.width * 0.014,
              fontWeight: FontWeight.w800,
            ),
          ),
        ),
        const Spacer(),
        GestureDetector(
          onTap: () {
            print("object");
          },
          child: Container(
            height: MediaQuery.of(context).size.height * 0.06,
            width: MediaQuery.of(context).size.width * 0.09,
            decoration: const BoxDecoration(
              color: Color.fromRGBO(21, 34, 102, 1),
              borderRadius: BorderRadius.all(
                Radius.circular(
                  30,
                ),
              ),
            ),
            child: Center(
              child: Text(
                "Sign In",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: MediaQuery.of(context).size.width * 0.014,
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
