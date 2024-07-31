import 'package:flutter/material.dart';

double height(BuildContext context, double percentage) {
  return MediaQuery.of(context).size.height * (percentage / 100);
}

double width(BuildContext context, double percentage) {
  return MediaQuery.of(context).size.width * (percentage / 100);
}
