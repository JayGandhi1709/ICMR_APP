import 'package:icmr/components/models/table_row_model.dart';

import '../../../components/models/question.dart';

final List<Question> hfat1FormC = [
  Question(
      type: "table",
      question:
          "1C.1 : Tick the manpower available in your emergency department and provide numbers",
      value: [],
      tableHeaders: const [
        "Manpower",
        "Number",
        "24/7 Availability",
        "On-sit Availability",
        "On-call Availability"
      ],
      tableRows: [
        TableRowModel(
          name: "Faculty/Consultant",
        ),
        TableRowModel(
          name: "CMO (casualty medical officer)",
        ),
        TableRowModel(
          name: "SR (Senior Residents)",
        ),
        TableRowModel(
          name: "JR (Junior Residents)",
        ),
        TableRowModel(
          name: "MO (Medical officer)",
        ),
        TableRowModel(
          name: "Nursing officer in charge / Team leader",
        ),
        TableRowModel(
          name: "Staff Nurse/ Nursing Officer",
        ),
        TableRowModel(
          name: "Radiology technician/ Radiographer",
        ),
        TableRowModel(
          name: "Lab Technician",
        ),
        TableRowModel(
          name: "OT. Technician",
        ),
        TableRowModel(
          name:
              "H.A/ GDA/ Orderly (GDA)General Duty Assistant,SA- Sanitary Attendant, HA- Hospital Attendant",
        ),
        TableRowModel(
          name: "SA/ Housekeeping staff",
        ),
        TableRowModel(
          name: "EMT",
        ),
        TableRowModel(
          name: "Security",
        ),
        TableRowModel(
          name: "Registration staff",
        ),
        TableRowModel(
          name: "IT Staff",
        ),
        TableRowModel(
          name: "Hospital Administrator",
        ),
        TableRowModel(
          name: "Pharmacist",
        ),
        TableRowModel(
          textField: true,
          name: "Other (Please Specify)",
        ),
      ]),
// Question(
//   type: 'text',
//   question:
//       '1C.1 : Tick the manpower available in your emergency department and provide numbers',
//   value: TextEditingController(),
// ),
];
