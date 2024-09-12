import 'package:flutter/material.dart';

class Methodology extends StatefulWidget {
  const Methodology({super.key});

  @override
  State<Methodology> createState() => _MethodologyState();
}

class _MethodologyState extends State<Methodology> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            // Outcome Title
            Text(
              "GOALS :",
              style: TextStyle(
                fontSize: MediaQuery.of(context).size.width * 0.025,
                fontWeight: FontWeight.bold,
                color: const Color.fromRGBO(21, 34, 102, 1),
                fontFamily: "poppins",
              ),
            ),
            const SizedBox(height: 20),

            // Primary Outcome Section
            Container(
              color: Colors.black,
              padding: const EdgeInsets.symmetric(horizontal: 17, vertical: 8),
              margin: const EdgeInsets.only(bottom: 10.0),
              child: Text(
                "Primary",
                style: TextStyle(
                  fontSize: MediaQuery.of(context).size.width * 0.01,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                ),
              ),
            ),
            const SizedBox(height: 5),
            _buildBulletPoint(
                "Identify potential barriers and facilitators to the implementation of a patient-centric, integrated emergency care system in India."),
            _buildBulletPoint(
                "Develop an implementation model for high-quality patient-centric integrated emergency care that is feasible, sustainable, and cost-effective."),
            _buildBulletPoint(
                "Evaluate the optimized model in terms of coverage, implementation, costing, and impact on outcomes."),

            const SizedBox(height: 20),

            // Secondary Outcome Section
            Container(
              color: Colors.black,
              padding: const EdgeInsets.symmetric(horizontal: 17, vertical: 8),
              margin: const EdgeInsets.only(bottom: 10.0),
              child: Text(
                "Secondary",
                style: TextStyle(
                  fontSize: MediaQuery.of(context).size.width * 0.01,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                ),
              ),
            ),
            const SizedBox(height: 5),
            _buildBulletPoint(
                "Improve the quality and efficiency of emergency care in India."),
            _buildBulletPoint(
                "Increase the availability of emergency care services to underserved populations."),
            _buildBulletPoint(
                "Reduce the number of deaths and disabilities caused by time-sensitive emergencies."),
            _buildBulletPoint(
                "Improve the satisfaction of patients and families with emergency care services."),
            _buildBulletPoint(
                "Dissemination of research findings and best practices at the national level and assist the state in scaling up the optimized model."),
          ],
        ),
      ),
    );
  }
}

Widget _buildBulletPoint(String text) {
  return Padding(
    padding: const EdgeInsets.symmetric(horizontal: 20),
    child: Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        const Text("• ", style: TextStyle(fontSize: 20, height: 1.5)),
        Expanded(
          child: Text(
            text,
            style: const TextStyle(
              fontSize: 16,
              color: Colors.black87,
              height: 1.5,
            ),
          ),
        ),
      ],
    ),
  );
}
