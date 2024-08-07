import 'package:flutter/material.dart';
import 'package:icmr/components/models/checkbox_option.dart';
import 'package:icmr/components/models/question.dart';
import 'package:icmr/components/models/radio_option.dart';

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
    value: <String>[],
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
    value: <String>[],
  ),
];

final List<Question> hfat1FormB = [
  Question(
    type: "text",
    question:
        "1B.1 : How many beds are avilable for the in-patient department (IPD)?",
    value: TextEditingController(),
  ),
  Question(
    type: "radio",
    question:
        "1B.2 Whether any dedicated bed present for emergency care? If No, skip to 1B.5",
    options: <RadioOption>[
      RadioOption(label: 'Yes'),
      RadioOption(label: 'No'),
    ],
    value: '',
  ),
  Question(
    type: "text",
    question: "1B.3. How many beds are available for emergency care?",
    value: TextEditingController(),
  ),
  Question(
    type: "radio",
    question:
        "1B.4 Number of Beds by Emergency Severity Index (ESI): Please select the category",
    options: <RadioOption>[
      RadioOption(label: 'Red', isOther: true),
      RadioOption(label: 'Yellow', isOther: true),
      RadioOption(label: 'Green', isOther: true)
    ],
    value: '',
  ),
  Question(
    type: "text",
    question:
        "1B.5 What is the average number of patients presenting to OPD per month?",
    value: TextEditingController(),
  ),
  Question(
    type: "text",
    question:
        "1B.6 What is the average number of patients presenting with emergency conditions daily?",
    subtitle:
        "(Chest pain, stroke, acute weakness, acute blindness, Shortness of breath, altered mentation, snake bite, bites, road traffic accident, injuries ,poisoning, deliberate self-harm, infectious diseases, fever, pregnancy related, seizure, acute abdomen, anaphylaxis, cerebro-meningeal infections, foreign body, acute pulmonary disease, Shock, accidental injuries, infections)",
    value: TextEditingController(),
  ),
  Question(
    type: "radio",
    question: "1B.7 Does the facility have a licensed in-house blood bank?",
    options: <RadioOption>[
      RadioOption(label: 'Yes, it is available 24/7'),
      RadioOption(label: 'Yes, but it is not available 24/7'),
      RadioOption(
          label: 'No, but there isn a tie up with external Bllod back facility',
          isOther: true),
      RadioOption(label: 'No'),
    ],
    value: '',
  ),
  Question(
    type: "checkbox",
    question:
        "1B.8 : Which of these does the blood bank have among the following?",
    options: <CheckBoxOption>[
      CheckBoxOption(label: 'Component facility'),
      CheckBoxOption(label: 'O -ve Blood availability')
    ],
    value: <String>[],
  ),
  Question(
    type: "radio",
    question: "1B.9 : Is there a blood storage facility inside the emergency?",
    options: <RadioOption>[
      RadioOption(label: 'Yes'),
      RadioOption(label: 'No'),
    ],
    value: '',
  ),
  Question(
    type: "checkbox",
    question:
        "1B.10 : Which of the following does your facility have to provide easy access for emergency care?",
    options: <CheckBoxOption>[
      CheckBoxOption(
          label:
              'No vehicles parked on the way/in front of emergency department'),
      CheckBoxOption(
          label: 'Designated parking area for Ambulance, Staff and Public'),
      CheckBoxOption(
          label:
              'Smooth entry area with adequate wheelchair, trolley and stretcher bay')
    ],
    value: <String>[], // Empty list to be filled with selected options
  ),
  Question(
    type: "checkbox",
    question:
        "1B.11 : Which of the following demarcated/dedicated areas does this facility have for emergency care? (Select all that apply)",
    options: <CheckBoxOption>[
      CheckBoxOption(label: 'Decontamination Area at the Entrance of ED'),
      CheckBoxOption(
          label:
              'Hospital attendant at the entrance of hospital to help the patient with the wheelchair, stretcher, etc.'),
      CheckBoxOption(label: 'Waiting area for patients/ attendants'),
      CheckBoxOption(label: 'Police control room'),
      CheckBoxOption(label: 'Emergency Registration Counter'),
      CheckBoxOption(
          label:
              'Department has proper layout and demarcated areas as per Triage.'),
      CheckBoxOption(label: 'Demarcated station for doctors and nurses'),
      CheckBoxOption(label: 'Demarcated plaster room'),
      CheckBoxOption(label: 'Dedicated isolation rooms (Emergency Infections)'),
      CheckBoxOption(label: 'Dedicated minor OT'),
      CheckBoxOption(label: 'Provision for emergency OT'),
      CheckBoxOption(label: 'Point of care lab (24x7)'),
      CheckBoxOption(label: 'Demarcated duty room for doctors'),
      CheckBoxOption(label: 'Demarcated duty room for nursing staff'),
      CheckBoxOption(label: 'Ambulance driver’s room'),
      CheckBoxOption(label: 'Dedicated LaQshya certified labor room'),
      CheckBoxOption(label: 'Child-friendly service based on MusQan'),
      CheckBoxOption(label: 'NABH Accreditation')
    ],
    value: <String>[], // List of selected options
  ),
  Question(
    type: "checkbox",
    question:
        "1B.12 : Is there any display board of all the emergency services and entitlements available in its departments?",
    options: <CheckBoxOption>[
      CheckBoxOption(
          label:
              'Services provided to the patients are clearly defined, displayed prominently.'),
      CheckBoxOption(
          label:
              'Names of doctor and nursing staff on duty are displayed and updated.'),
      CheckBoxOption(label: 'List of available drugs are displayed.'),
      CheckBoxOption(
          label:
              'All relevant information is displayed for the patients and visitors including user charges wherever applicable at the time of procedure/ investigation/admission.'),
      CheckBoxOption(
          label:
              'Important contact numbers including ambulance, blood bank, police and referral centers displayed.'),
      CheckBoxOption(label: 'Other (Specify)')
    ],
    value: <String>[], // List of selected options
  ),
  Question(
    type: "checkbox",
    question:
        "1B.13 : Which of the following safety and security infrastructure/measures are in place at your hospital (Select all that apply):",
    options: <CheckBoxOption>[
      CheckBoxOption(label: 'Fire safety'),
      CheckBoxOption(label: 'Building safety'),
      CheckBoxOption(label: 'Electrical safety'),
      CheckBoxOption(label: 'Patient and healthcare provider safety'),
      CheckBoxOption(label: 'Chemical safety'),
      CheckBoxOption(label: 'Periodic training of staff (Every 6 months)'),
      CheckBoxOption(label: 'Periodic mock drill (Every 6 months)'),
      CheckBoxOption(label: 'Police post available within the premises.'),
      CheckBoxOption(
          label:
              'Alarm bell in Emergency / Code announcement available for extra help.'),
      CheckBoxOption(label: 'Disease outbreak management plan'),
      CheckBoxOption(label: 'Surge capacity in your hospital')
    ],
    value: <String>[], // List of selected options
  ),
  Question(
    type: "radio",
    question: "1B.14 : Does the hospital provide ambulance services?",
    options: <RadioOption>[RadioOption(label: 'Yes'), RadioOption(label: 'No')],
    value: '', // Single selected option
  ),
];
