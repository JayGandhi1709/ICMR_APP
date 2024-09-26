import 'package:flutter/material.dart';

class AboutProjectPage extends StatefulWidget {
  const AboutProjectPage({super.key});

  @override
  State<AboutProjectPage> createState() => _AboutProjectPageState();
}

class _AboutProjectPageState extends State<AboutProjectPage> {
  int currentphotoindex = 0;
  List<String> emergencyConditions = [
    "Trauma and Burns",
    "ST-Elevated Myocardial Infarction (STEMI)",
    "Stroke",
    "Acute Respiratory Illness",
    "Postpartum Hemorrhage and Preeclampsia",
    "Neonatal Emergencies",
    "Snake Bite and Poisoning.",
  ];
  List<String> images = [
    "assets/AboutProject/burns.png",
    "assets/AboutProject/MI.png",
    "assets/AboutProject/Poisnoning.png",
    "assets/AboutProject/burns.png",
    "assets/AboutProject/pph.png",
    "assets/AboutProject/sankebites.png",
    "assets/AboutProject/STROKE.png",
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Expanded(
            flex: 3,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "This will be a multi-district implementation research conducted along with the State health department with a concurrent mixed methods design. The study will be conducted to develop and implement a high-quality emergency care system with a focus on the following time-sensitive emergencies:",
                  style: TextStyle(
                    fontSize: MediaQuery.of(context).size.width * 0.01,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(
                  height: MediaQuery.of(context).size.height * 0.09,
                ),
                SizedBox(
                  height: 300,
                  child: ListView.builder(
                    itemCount: emergencyConditions.length,
                    itemBuilder: (context, index) {
                      return GestureDetector(
                        onTap: () {
                          setState(() {
                            currentphotoindex = index;
                          });
                        },
                        child: Text(
                          emergencyConditions[index],
                          style: TextStyle(
                            fontSize: MediaQuery.of(context).size.width * 0.01,
                            fontWeight: FontWeight.bold,
                            color: index == currentphotoindex
                                ? Color.fromRGBO(67, 117, 246, 1)
                                : Colors.black,
                          ),
                        ),
                      );
                    },
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            flex: 5,
            child: Center(
              child: Container(
                height: 350,
                width: 350,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage(
                      images[currentphotoindex],
                    ),
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
