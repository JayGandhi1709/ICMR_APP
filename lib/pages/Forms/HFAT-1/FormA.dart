import 'package:flutter/material.dart';

import '../../../components/models/question.dart';
import '../../../components/models/radio_option.dart';

final List<Question> hfat1FormA = [
  Question(
    type: 'text',
    question: "1A.1 : Assessor's Name",
    value: TextEditingController(),
  ),
  Question(
    type: 'date',
    question: "1A.2 : Date",
    value: TextEditingController(text: DateTime.now().toString()),
  ),
  Question(
    type: 'radio',
    question: '1A.3 : Code',
    options: <RadioOption>[
      RadioOption(label: "GJBRC_DH"),
      RadioOption(label: "ORPUR_DH"),
      RadioOption(label: "MPBHS_DH"),
      RadioOption(label: "PBLDH_DH"),
      RadioOption(label: "PYPDY_DH"),
    ],
    value: '',
  ),
  Question(
    type: 'text',
    question: "1A.4 : Block Name",
    value: TextEditingController(),
  ),
  Question(
    type: 'text',
    question: "1A.5 : Healthcare Facility Name",
    value: TextEditingController(),
  ),
  Question(
    type: 'text',
    question: "1A.6 : Healthcare Facility Address",
    value: TextEditingController(),
  ),
  Question(
    type: 'text',
    question: "1A.7 : Name of the hospital Superintendent:",
    value: TextEditingController(),
  ),
  Question(
    type: 'text',
    question: "1A.8 : Contact Number of the hospital Superintendent:",
    value: TextEditingController(),
  ),
  Question(
    type: 'text',
    question: "1A.9 : Email ID:",
    value: TextEditingController(),
  ),
  Question(
    type: 'text',
    question: "1A.10 : Location:",
    value: TextEditingController(),
  ),
  Question(
    type: 'radio',
    question: '1A.11 : Type of Health Care facility',
    options: <RadioOption>[
      RadioOption(label: "District Hospital (DH)"),
      RadioOption(label: "Tertiary care center"),
    ],
    value: '',
  ),
  Question(
    type: 'radio',
    question: '1A.11 : Type of Health Care facility',
    options: <RadioOption>[
      RadioOption(
          label:
              "Public: ESI Hospital/ Railway Hospital/Trust Hospital/ Medical College"),
      RadioOption(label: "Semi govt. hospital"),
      RadioOption(
          label: "Private: Medical College/ Corporate hospital/NGO Hospital"),
    ],
    value: '',
  ),
];
