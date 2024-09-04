import 'package:flutter/material.dart';
import 'package:icmr/pages/Forms/HFAT-1/SidePanelHFAT1.dart';

class FormA extends StatefulWidget {
  const FormA({super.key});

  @override
  State<FormA> createState() => _FormAState();
}

class _FormAState extends State<FormA> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          children: [
            const Padding(
              padding: EdgeInsets.symmetric(vertical: 20),
              child: Text(
                "Health Facility Assessment Tool 1: District Hospital/Tertiary Care (Public or Private)",
                style: TextStyle(fontSize: 23, fontWeight: FontWeight.w900),
              ),
            ),
            Row(
              children: [
                const SizedBox(
                    height: 600,
                    width: 200,
                    child: Sidepanelhfat1()),
                const SizedBox(
                  width: 20,
                ),
                SingleChildScrollView(
                  child: Container(
                    color: const Color(0xFFF2F7FF),
                    height: 600,
                    width: 750,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          padding: EdgeInsets.symmetric(horizontal: 10,vertical: 5),
                          width: double.infinity,
                          color: const Color(0xFF152266),
                          child: const Text(
                              "1A. Health Facility Information",
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 18,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
