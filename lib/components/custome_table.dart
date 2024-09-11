import 'package:flutter/material.dart';

class CustomeTable extends StatefulWidget {
  const CustomeTable(
      {super.key,
      required this.headers,
      required this.body,
      required this.width});
  final List headers;
  final List<TableRow> body;
  final List width;

  @override
  State<CustomeTable> createState() => _CustomeTableState();
}

class _CustomeTableState extends State<CustomeTable> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: LayoutBuilder(
        builder: (context, constraints) {
          double columnWidth = constraints.maxWidth;

          return SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Table(
              border: TableBorder.all(color: Colors.black),
              defaultVerticalAlignment: TableCellVerticalAlignment.middle,
              columnWidths: {
                ...widget.width.asMap().map((index, value) {
                  return MapEntry(index, FixedColumnWidth(columnWidth * value));
                }),
              },
              children: [
                TableRow(
                  decoration: BoxDecoration(
                    color: Colors.grey[300],
                  ),
                  children: [
                    ...widget.headers.map((header) => TableCell(
                          verticalAlignment: TableCellVerticalAlignment.middle,
                          child: Padding(
                            padding: EdgeInsets.all(16.0),
                            child: Text(header),
                          ),
                        )),
                  ],
                ),
                ...widget.body,
              ],
            ),
          );
        },
      ),
    );
  }
}
