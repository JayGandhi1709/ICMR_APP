import 'package:flutter/material.dart';
import 'package:icmr/pages/Forms/CST/CST.dart';

import '../Forms/HFAT-1/HFAT_1.dart';

class DataCollection extends StatefulWidget {
  const DataCollection({super.key});

  @override
  State<DataCollection> createState() => _DataCollectionState();
}

class _DataCollectionState extends State<DataCollection> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            mainAxisSize: MainAxisSize.min, // Makes the card fit the content
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(height: 10),
              InkWell(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const CST()),
                  );
                },
                child: ListTile(
                  title: Text(
                    "Community Survey Tool",
                    style: TextStyle(
                      fontSize: MediaQuery.of(context).size.width * 0.02,
                      fontWeight: FontWeight.bold,
                      color: const Color.fromRGBO(84, 78, 78, 1),
                      fontFamily: "poppins",
                    ),
                  ),
                ),
              ),
              InkWell(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const HFAT1()),
                  );
                },
                child: ListTile(
                  title: Text(
                    "Health Facility Assessment Tool 1: District Hospital/Tertiary Care (Public or Private)",
                    style: TextStyle(
                      fontSize: MediaQuery.of(context).size.width * 0.02,
                      fontWeight: FontWeight.bold,
                      color: const Color.fromRGBO(84, 78, 78, 1),
                      fontFamily: "poppins",
                    ),
                  ),
                ),
              ),
              InkWell(
                onTap: () {
                  Navigator.pushNamed(context, '/form3');
                },
                child: ListTile(
                  title: Text(
                    "Health Facility Assessment Tool 2: Community Health Centre",
                    style: TextStyle(
                      fontSize: MediaQuery.of(context).size.width * 0.02,
                      fontWeight: FontWeight.bold,
                      color: const Color.fromRGBO(84, 78, 78, 1),
                      fontFamily: "poppins",
                    ),
                  ),
                ),
              ),
              InkWell(
                onTap: () {
                  Navigator.pushNamed(context, '/form4');
                },
                child: ListTile(
                  title: Text(
                    "Health Facility Assessment Tool 3: Primary Health Centre",
                    style: TextStyle(
                      fontSize: MediaQuery.of(context).size.width * 0.02,
                      fontWeight: FontWeight.bold,
                      color: const Color.fromRGBO(84, 78, 78, 1),
                      fontFamily: "poppins",
                    ),
                  ),
                ),
              ),
              InkWell(
                onTap: () {
                  Navigator.pushNamed(context, '/form5');
                },
                child: ListTile(
                  title: Text(
                    "GAP Assessment Tool – Ambulance at Facility Level",
                    style: TextStyle(
                      fontSize: MediaQuery.of(context).size.width * 0.02,
                      fontWeight: FontWeight.bold,
                      color: const Color.fromRGBO(84, 78, 78, 1),
                      fontFamily: "poppins",
                    ),
                  ),
                ),
              ),
              InkWell(
                onTap: () {
                  Navigator.pushNamed(context, '/form5');
                },
                child: ListTile(
                  title: Text(
                    "Verbal Autopsy Tools",
                    style: TextStyle(
                      fontSize: MediaQuery.of(context).size.width * 0.02,
                      fontWeight: FontWeight.bold,
                      color: const Color.fromRGBO(84, 78, 78, 1),
                      fontFamily: "poppins",
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
