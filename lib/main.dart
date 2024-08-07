import 'package:flutter/material.dart';
import 'package:icmr/pages/HFAT-1/hfat_1.dart';


void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Color.fromRGBO(242, 247, 255, 1),),
        useMaterial3: true,
      ),
      home: const HFAT1(),
    );
  }
}
