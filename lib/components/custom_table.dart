import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:icmr/components/models/table_row_model.dart';

class CustomTable extends StatefulWidget {
  const CustomTable(
      {super.key,
      required this.headers,
      required this.rowData,
      required this.width});

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
            ...widget.headers.map(
              (header) => TableCell(
                child: Container(
                  color: const Color.fromRGBO(21, 34, 102, 0.9),
                  padding: const EdgeInsets.all(8.0),
                  child: Center(
                    child: Text(
                      header,
                      style: const TextStyle(
                        color: Colors.white,
                        fontFamily: "Poppins",
                        fontSize: 15,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ),
              ),
            ),
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
          child: SizedBox(
            width: double.infinity,
            child: TextFormField(
              keyboardType: TextInputType.number,
              inputFormatters: <TextInputFormatter>[
                FilteringTextInputFormatter.digitsOnly, // Allows only digits
              ],
              enabled: isChecked,
              decoration: const InputDecoration(
                border: OutlineInputBorder(
                  borderSide: BorderSide(
                    color: Colors.blue,
                    width: 5,
                  ),
                ),
              ),
            ),
          ),
        ),
      ),
      TableCell(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Radio<String>(
              value: 'Yes',
              groupValue: selectedOption,
              onChanged: isChecked ? radioButtonOnChange : null,
            ),
            const Text('Yes'),
            Radio<String>(
              value: 'No',
              groupValue: selectedOption,
              onChanged: isChecked ? radioButtonOnChange : null,
            ),
            const Text('No'),
          ],
        ),
      ),
      TableCell(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Radio<String>(
              value: 'Yes',
              groupValue: selectedOption1,
              onChanged: isChecked ? radioButtonOnChange1 : null,
            ),
            const Text('Yes'),
            Radio<String>(
              value: 'No',
              groupValue: selectedOption1,
              onChanged: isChecked ? radioButtonOnChange1 : null,
            ),
            const Text('No'),
          ],
        ),
      ),
      TableCell(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Radio<String>(
              value: 'Yes',
              groupValue: selectedOption2,
              onChanged: isChecked ? radioButtonOnChange2 : null,
            ),
            const Text('Yes'),
            Radio<String>(
              value: 'No',
              groupValue: selectedOption2,
              onChanged: isChecked ? radioButtonOnChange2 : null,
            ),
            const Text('No'),
          ],
        ),
      ),
    ],
  );
}
