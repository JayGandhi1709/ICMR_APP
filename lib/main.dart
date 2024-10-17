import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:icmr/pages/Forms/CST/CST.dart';
import 'package:icmr/pages/Forms/HFAT-1/HFAT_1.dart';
import 'package:icmr/pages/main_home_screen.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setPreferredOrientations(
      [DeviceOrientation.landscapeLeft, DeviceOrientation.landscapeRight]).then(
    (_) {
      runApp(
        const MyApp(),
      );
    },
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        textTheme: const TextTheme(
          displayLarge:
              TextStyle(fontFamily: 'Poppins', fontWeight: FontWeight.bold),
          displayMedium:
              TextStyle(fontFamily: 'Poppins', fontWeight: FontWeight.w600),
          bodyLarge:
              TextStyle(fontFamily: 'Poppins', fontWeight: FontWeight.normal),
          bodyMedium:
              TextStyle(fontFamily: 'Poppins', fontWeight: FontWeight.normal),
          // Add more styles as needed
        ),
        colorScheme: ColorScheme.fromSeed(
          seedColor: const Color.fromRGBO(242, 247, 255, 1),
        ),
        useMaterial3: true,
      ),
      home: const CST(),
      // home: MainHomePage(),
    );
  }
}
