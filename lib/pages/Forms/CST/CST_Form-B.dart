import '../../../components/models/question.dart';
import 'package:flutter/material.dart';
import '../../../components/models/radio_option.dart';

final List<Question> cstFormB = [
  Question(
      type: 'text', question: 'AB.1 Block :', value: TextEditingController()),
  Question(
      type: 'radio',
      question: 'AB.2 Type of PSU :',
      options: <RadioOption>[
        RadioOption(label: "Rural"),
        RadioOption(label: "Urban"),
      ],
      value: ''),
  Question(
    type: 'text',
    question: 'AB.3 Name of PSU (Town/Village) :',
    value: TextEditingController(),
  ),
  Question(type: '', question: 'AB.4 GPS Co-ordinates : Location :', value: ''),
  Question(
      type: 'text',
      question: 'AB.5 Household ID Number :',
      value: TextEditingController()),
  Question(
      type: 'radio',
      question:
          'AB.6 For how long have you been living in this city/ village with your family?',
      options: <RadioOption>[
        RadioOption(label: "< 1 year>"),
        RadioOption(label: "> 1 year"),
      ],
      value: ''),
  Question(
      type: '',
      question:
          'I would like to ask few questions pertaining to people staying in the same household including both family and non-family members for the last 1 year like servants included but paying guests not included.',
      value: '')
];
