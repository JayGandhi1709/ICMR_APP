import 'package:flutter/services.dart';

class Question {
  final String type;
  final String question;
  final List<dynamic>? options;
  final String? Function(String?)? validator;
  final List<TextInputFormatter>? inputformatters;
  TextInputType? keyboardType;
  final bool isOtherDate;
  dynamic value;

  Question({
    required this.type,
    required this.question,
    this.options,
    this.validator,
    this.inputformatters,
    this.keyboardType,
    this.isOtherDate = false,
    required this.value,
  });
}
