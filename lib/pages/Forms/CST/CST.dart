import 'package:flutter/material.dart';
import 'package:icmr/components/Layout/CST_Layout/CST_Forms_Layout.dart';

import 'CST_FORM-C2.dart';
import 'CST_Form-B.dart';

// import 'CST_Form-A.dart';

class CST extends StatefulWidget {
  const CST({super.key});

  @override
  State<CST> createState() => _CSTState();
}

class _CSTState extends State<CST> {
  bool isDataSubmited = false;
  int currentFormIndex = 0;
  final _formKey = GlobalKey<FormState>();

  final sidepanelList = [
    "Site Information",
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

  final List listOfQuestion = [cstFormB];

  @override
  Widget build(BuildContext context) {
    return CstFormsLayout(
      currentSideIndex: currentFormIndex,
      sidePanelList: sidepanelList,
      formKey: _formKey,
      questions: listOfQuestion[currentFormIndex],
      heading: "Community Survey Tool",
      title: "A Socio-demographic Characteristics",
      subtitle: sidepanelList[currentFormIndex],
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
          if (currentFormIndex < listOfQuestion.length - 1) {
            currentFormIndex += 1;
          }
        });
      },
    );
  }
}
