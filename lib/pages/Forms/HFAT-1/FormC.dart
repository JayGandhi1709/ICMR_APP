import 'package:flutter/cupertino.dart';

import '../../../components/models/checkbox_option.dart';
import '../../../components/models/question.dart';

final List<Question> hfat1FormC = [
  Question(
    type: 'text',
    question:
        '1C.1 : Tick the manpower available in your emergency department and provide numbers',
    value: TextEditingController(),
  ),
  Question(
    type: 'checkbox',
    question:
        '1C.2 : Please indicate which of the following specialist/super specialist services are available in your hospital',
    options: <CheckBoxOption>[
      CheckBoxOption(label: 'Component facility'),
      CheckBoxOption(label: 'O -ve Blood availability'),
    ],
    value: <String>[],
  ),
];
