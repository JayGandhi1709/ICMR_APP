import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class CustomDate extends StatelessWidget {
  const CustomDate({
    super.key,
    required this.title,
  });

  final String title;

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Text(title),
        const SizedBox(width: 15),
        Text(DateFormat("dd-mm-yyyy hh:MM").format(DateTime.now())),
        // Text(DateTime.now().toString()),
      ],
    );
  }
}
