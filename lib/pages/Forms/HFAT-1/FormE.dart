import '../../../components/models/checkbox_option.dart';
import '../../../components/models/question.dart';

final List<Question> hfat1FormE = [
  Question(
    type: 'checkbox',
    question:
        '1E.3 : Which of these emergency care services does your facility provide? (Select all that apply)',
    options: <CheckBoxOption>[
      CheckBoxOption(label: 'Emergency operative services for trauma patients'),
      CheckBoxOption(
          label:
              'Emergency operative services for non-trauma (surgical, orthopedics etc.) patients'),
      CheckBoxOption(
          label: 'Emergency operative services for obstetrics patients'),
      CheckBoxOption(
          label: 'Elective operative services for orthopedic patients'),
      CheckBoxOption(
          label: 'Elective operative services for neurosurgical patients'),
      CheckBoxOption(label: 'Common intensive care services (ICU)'),
      CheckBoxOption(label: 'Common high dependency Unit (HDU)'),
      CheckBoxOption(label: 'Pediatrics ICU'),
      CheckBoxOption(label: 'Neonatal ICU'),
      CheckBoxOption(label: 'Neurosurgery ICU'),
      CheckBoxOption(label: 'Cardiac ICU'),
      CheckBoxOption(label: 'Cardiac Cath Lab'),
      CheckBoxOption(label: 'Intervention Radiology'),
      CheckBoxOption(label: 'Intervention neuroradiology service with DSA'),
      CheckBoxOption(label: 'Stroke unit'),
      CheckBoxOption(label: 'Tele-Medicine facility'),
      CheckBoxOption(
        label: 'Other (Specify)',
        isOther: true,
      ),
    ],
    value: <String>[],
  ),
];
