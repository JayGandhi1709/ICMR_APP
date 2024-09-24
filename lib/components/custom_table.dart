import 'package:flutter/material.dart';
import 'package:icmr/components/models/table_row_model.dart';

class CustomTable extends StatefulWidget {
  const CustomTable({super.key, required this.headers, required this.rowData, required this.width});

  final List headers;
  final List<TableRowModel> rowData;

  final List width;


  @override
  State<CustomTable> createState() => _CustomTableState();
}

class _CustomTableState extends State<CustomTable> {
  @override
  Widget build(BuildContext context) {
    return Table(
      border: TableBorder.all(),
      columnWidths: {
        ...widget.width.asMap().map((index, value) {
          return MapEntry(index, FlexColumnWidth(value));
        }),
      },
      children: [
        TableRow(
          children: [
            ...widget.headers.map((header) => TableCell(
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(header,style: TextStyle(fontWeight: FontWeight.bold),),
              ),
            )),
          ],
        ),
        ...widget.rowData.map(
              (data) {
            return tableField(
              isChecked: data.isChecked,
              checkBoxOnChange: (bool? value) {
                setState(() {
                  data.isChecked = value ?? false;
                });
              },
              radioButtonOnChange: (String? value) {
                setState(() {
                  data.selectedOption = value;
                });
              },
              radioButtonOnChange1: (String? value) {
                setState(() {
                  data.selectedOption1 = value;
                });
              },
              radioButtonOnChange2: (String? value) {
                setState(() {
                  data.selectedOption2 = value;
                });
              },
              textField: data.textField,
              name: data.name,
              selectedOption: data.selectedOption,
              selectedOption1: data.selectedOption1,
              selectedOption2: data.selectedOption2,
            );
          },
        ).toList(),
      ],
    );
  }
}


TableRow tableField({
  required bool isChecked,
  required ValueChanged<bool?> checkBoxOnChange,
  required ValueChanged<String?> radioButtonOnChange,
  required ValueChanged<String?> radioButtonOnChange1,
  required ValueChanged<String?> radioButtonOnChange2,
  required String? name,
  required String? selectedOption,
  required String? selectedOption1,
  required String? selectedOption2,
  bool textField = false,
}) {
  return TableRow(
    children: [
      TableCell(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Row(
            children: [
              Checkbox(
                value: isChecked,
                onChanged: checkBoxOnChange,
              ),
              Expanded(child: Text(name!)),
              textField && isChecked
                  ? Expanded(
                child: TextFormField(
                  decoration: const InputDecoration(
                    border: InputBorder.none,
                  ),
                ),
              )
                  : Container()
            ],
          ),
        ),
      ),
      TableCell(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: isChecked
              ? SizedBox(
            width: double.infinity,
            child: TextFormField(
              decoration: const InputDecoration(
                border: InputBorder.none,
              ),
            ),
          )
              : Container(
            height: 30.0,
            width: 30.0,
            decoration: BoxDecoration(
              color: Colors.grey[300],
            ),
          ),
        ),
      ),
      TableCell(
        child: Column(
          children: [
            ListTile(
              title: const Text('Yes'),
              leading: Radio<String>(
                value: 'Yes',
                groupValue: selectedOption,
                onChanged: isChecked ? radioButtonOnChange : null,
              ),
            ),
            ListTile(
              title: const Text('No'),
              leading: Radio<String>(
                value: 'No',
                groupValue: selectedOption,
                onChanged: isChecked ? radioButtonOnChange : null,
              ),
            ),
          ],
        ),
      ),
      TableCell(
        child: Column(
          children: [
            ListTile(
              title: const Text('Yes'),
              leading: Radio<String>(
                value: 'Yes',
                groupValue: selectedOption1,
                onChanged: isChecked ? radioButtonOnChange1 : null,
              ),
            ),
            ListTile(
              title: const Text('No'),
              leading: Radio<String>(
                value: 'No',
                groupValue: selectedOption1,
                onChanged: isChecked ? radioButtonOnChange1 : null,
              ),
            ),
          ],
        ),
      ),
      TableCell(
        child: Column(
          children: [
            ListTile(
              title: const Text('Yes'),
              leading: Radio<String>(
                value: 'Yes',
                groupValue: selectedOption2,
                onChanged: isChecked ? radioButtonOnChange2 : null,
              ),
            ),
            ListTile(
              title: const Text('No'),
              leading: Radio<String>(
                value: 'No',
                groupValue: selectedOption2,
                onChanged: isChecked ? radioButtonOnChange2 : null,
              ),
            ),
          ],
        ),
      ),
    ],
  );
}
