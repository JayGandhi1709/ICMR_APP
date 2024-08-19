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
    "AboutProject/burns.png",
    "AboutProject/MI.png",
    "AboutProject/Poisnoning.png",
    "AboutProject/burns.png",
    "AboutProject/pph.png",
    "AboutProject/sankebites.png",
    "AboutProject/STROKE.png",
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
                Expanded(
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
                height: 100,
                width: 100,
                decoration: BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage(images[currentphotoindex]))),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
