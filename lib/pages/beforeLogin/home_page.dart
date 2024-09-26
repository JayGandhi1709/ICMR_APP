import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: CustomAppBar(),
      body: Column(
        children: [
          Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Column(
                children: [
                  Text(
                    "An Implementation Research Study ",
                    style: TextStyle(
                      fontSize: MediaQuery.of(context).size.width * 0.025,
                      fontWeight: FontWeight.bold,
                      color: const Color.fromRGBO(21, 34, 102, 1),
                      fontFamily: "poppins",
                    ),
                  ),
                  Text(
                    "A High-quality patient centric integrated model for\nemergency care system in selected districts of India",
                    style: TextStyle(
                      fontSize: MediaQuery.of(context).size.width * 0.015,
                      fontWeight: FontWeight.w700,
                      color: const Color.fromRGBO(95, 121, 173, 1),
                      fontFamily: "poppins",
                    ),
                  ),
                  Text(
                    "AN ICMR TASK FORCE STUDY",
                    style: TextStyle(
                      fontSize: MediaQuery.of(context).size.width * 0.015,
                      fontWeight: FontWeight.bold,
                      color: const Color.fromRGBO(84, 78, 78, 1),
                      fontFamily: "poppins",
                    ),
                  ),
                ],
              ),
              Container(
                height: MediaQuery.of(context).size.height * 0.6,
                width: MediaQuery.of(context).size.width * 0.5,
                decoration: const BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage(
                      "assets/cuate.png",
                    ),
                  ),
                ),
              ),
            ],
          ),
          const Spacer(),
          Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  RichText(
                    text: TextSpan(
                      children: [
                        TextSpan(
                          text: 'Content Managed By ',
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: MediaQuery.of(context).size.width * 0.016,
                          ),
                        ),
                        TextSpan(
                          text: 'ICMR- New Delhi',
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: MediaQuery.of(context).size.width * 0.016,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  RichText(
                    text: TextSpan(
                      children: [
                        TextSpan(
                          text: 'Design & Developed By ',
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: MediaQuery.of(context).size.width * 0.016,
                          ),
                        ),
                        TextSpan(
                          text: 'Parul',
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: MediaQuery.of(context).size.width * 0.016,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(width: 4),
                  Text(
                    'University',
                    style: TextStyle(
                      color: Colors.red,
                      fontSize: MediaQuery.of(context).size.width * 0.016,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }
}
