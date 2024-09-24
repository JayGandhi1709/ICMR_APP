import 'package:flutter/services.dart';
import 'package:icmr/components/models/table_row_model.dart';

class Question {
  final String type;
  final String question;
  final String? subtitle;
  final List<dynamic>? options;
  final String? Function(String?)? validator;
  final List<TextInputFormatter>? inputformatters;
  TextInputType? keyboardType;
  final bool isOtherDate;
  dynamic value;
  final List? tableHeaders;
  final List<TableRowModel>? tableRows;

  Question({
    required this.type,
    required this.question,
    this.subtitle,
    this.options,
    this.validator,
    this.inputformatters,
    this.keyboardType,
    this.isOtherDate = false,
    required this.value,
    this.tableRows,
    this.tableHeaders,
  });
}
