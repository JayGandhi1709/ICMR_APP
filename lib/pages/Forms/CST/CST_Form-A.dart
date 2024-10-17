import '../../../components/models/question.dart';
import 'package:flutter/material.dart';
import '../../../components/models/radio_option.dart';

final List<Question> cstFormA = [
  Question(
    type: '',
    question: 'AA.1 Date & Time:',
    value: '',
  ),
  Question(
    type: 'radio',
    question: 'AA.2 Site :',
    options: <RadioOption>[
      RadioOption(label: "GJBRC_CS"),
      RadioOption(label: "ORPUR_CS"),
      RadioOption(label: "MPBHS_CS"),
      RadioOption(label: "PBLDH_CS"),
      RadioOption(label: "PYPDY_CS"),
    ],
    value: '',
  ),
  Question(
    type: 'text',
    question: 'AA.3 Name Of the Data Collector :',
    value: TextEditingController(),
  ),
  Question(
    type: 'text',
    question: 'AA.4 Respondent ID:',
    value: TextEditingController(),
  ),
];
