import 'package:flutter/material.dart';
import 'package:icmr/pages/Forms/HFAT-1/FormD.dart';

import '../../../components/Layout/HFAT_Layout/Forms_Layout.dart';
import 'FormA.dart';
import 'FormB.dart';
import 'FormC.dart';
import 'FormE.dart';

class HFAT1 extends StatefulWidget {
  const HFAT1({super.key});

  @override
  State<HFAT1> createState() => _HFAT1State();
}

class _HFAT1State extends State<HFAT1> {
  bool isDataSubmited = false;
  int currentFormIndex = 2;
  final _formKey = GlobalKey<FormState>();

  final sidepanelList = [
    "1A. Health Facility Information",
    "1B. Infrastructure",
    "1C. Human Resources",
    "1D. Logistics (Drugs/ Consumables/ Equipment)",
    "1E. Emergency Care Services",
    "1F. Information System",
    "1G. Finance",
    "1H. Leadership and Governance",
    "1I. Process/ Policies/SOPs",
    "1J. Referral Linkages",
  ];

  final List listOfQuestion = [
    hfat1FormA,
    hfat1FormB,
    hfat1FormC,
    hfat1FormD,
    hfat1FormE,
  ];

  @override
  Widget build(BuildContext context) {
    return FormLayout(
      currentSideIndex: currentFormIndex,
      sidePanelList: sidepanelList,
      formKey: _formKey,
      questions: listOfQuestion[currentFormIndex],
      heading:
          "Health Facility Assessment Tool 1: District Hospital/Tertiary Care (Public or Private)",
      title: sidepanelList[currentFormIndex],
      prevText: currentFormIndex == 0 ? '' : "Previous",
      onPrevious: () {
        setState(() {
          if (currentFormIndex > 0) {
            currentFormIndex -= 1;
          }
        });
      },
      onNext: () {
        setState(() {
          if (currentFormIndex < listOfQuestion.length-1) {
            currentFormIndex += 1;
          }
        });
      },
    );
  }
}
