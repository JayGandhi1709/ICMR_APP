import 'package:flutter/material.dart';

class Objective extends StatefulWidget {
  const Objective({super.key});

  @override
  State<Objective> createState() => _ObjectiveState();
}

class _ObjectiveState extends State<Objective> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            'Objective :',
            style: TextStyle(
              fontSize: MediaQuery.of(context).size.width * 0.025,
              fontWeight: FontWeight.bold,
              color: const Color.fromRGBO(21, 34, 102, 1),
              fontFamily: "poppins",
            ),
          ),
          const SizedBox(height: 20),
          RichText(
            text: const TextSpan(
              children: [
                TextSpan(
                  text: "Objective-1: ",
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                    color: Colors.black,
                  ),
                ),
                TextSpan(
                  text:
                      "To conduct a literature review to understand the current state of emergency care systems in India and globally, map the existing infrastructure, systems, and processes, and engage with stakeholders to discern their needs and experiences, with the aim of identifying potential barriers and facilitators.",
                  style: TextStyle(
                    fontSize: 16,
                    color: Colors.black87,
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(height: 10),
          RichText(
            text: const TextSpan(
              children: [
                TextSpan(
                  text: "Objective-2: ",
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                    color: Colors.black,
                  ),
                ),
                TextSpan(
                  text:
                      "To develop an implementation model for high-quality patient-centric integrated emergency care through iterative processes, implement and evaluate the optimized model in terms of coverage, implementation, costing, and impact on outcomes across 6 districts, with the aim of achieving 80% population coverage.",
                  style: TextStyle(
                    fontSize: 16,
                    color: Colors.black87,
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(height: 10),
          RichText(
            text: const TextSpan(
              children: [
                TextSpan(
                  text: "Objective-1: ",
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                    color: Colors.black,
                  ),
                ),
                TextSpan(
                  text:
                      "To disseminate the research findings and best practices at the national level and assist the state in scaling up the optimized model.",
                  style: TextStyle(
                    fontSize: 16,
                    color: Colors.black87,
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(height: 10),
        ],
      ),
    );
  }
}
